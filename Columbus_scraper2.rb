require 'HTTParty'
require 'Nokogiri'
require 'JSON'
require 'open-uri'
require 'certified'
require 'mechanize'
require 'csv'
require 'watir'
require 'watir-scroll'

Watir.default_timeout = 300

year = 2003
case_num = 1
case_codes = ["CVF", "CVI", "CVG", "CVE"]
looper = true

cvf_counter = 0

cvh_counter = 0

cvg_counter = 0

cvi_counter = 0

cve_counter = 0

browser = Watir::Browser.new
browser.goto 'https://hidester.com/proxy/'
browser.text_field(:id, 'input').set('http://www.fcmcclerk.com/case/search')
browser.input(:value => "Surf anonymously").click 
# browser.windows.first.close

	while case_num < 100

		code_num = 0

		browser.scroll.to :top

		browser.text_field(:id, 'input').set('http://www.fcmcclerk.com/case/search')
		browser.div(:id => "webproxy-form-content").button.click

		browser.text_field(:id, 'case_number').set("#{year} #{case_codes[code_num]} #{case_num}")

		browser.select_list(:id, 'party_code').select "PLAINTIFF"

		browser.button(:id, 'search_button_2').click

		if browser.button(:value, "View").exists?

			case_data = []

			# browser.scroll.to :bottom

			browser.button(:value, "View").click

			#PUT DATA COLLECTION BELOW

			date = 0
			plaintiff = 0
			plaintiff1 = 0
			plaintiff2 = 0
			plaintiff3 = 0
			defendant1 = 0
			defendant2 = 0
			defendant3 = 0
			defendant4 = 0
			defendant5 = 0
			judgement_amount = 0

			browser.windows.last.use do 
				
				date = browser.td(:class => "page_header", :index => 1).text
				plaintiff = browser.table(:id => "pty_table").td(:class => "data", :index => 1).text
				plaintiff1 = browser.table(:id => "pty_table").td(:class => "data", :index => 3).text
				plaintiff2 = browser.table(:id => "pty_table").td(:class => "data", :index => 4).text
				plaintiff3 = browser.table(:id => "pty_table").td(:class => "data", :index => 5).text

				defendant1 = browser.table(:id => "pty_table").td(:class => "data", :index => 7).text
				defendant1 = defendant1 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 9).text
				defendant1 = defendant1 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 10).text
				defendant1 = defendant1 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 11).text

				if browser.table(:id => "pty_table").td(:class => "data", :index => 13).exists?

					defendant2 = browser.table(:id => "pty_table").td(:class => "data", :index => 13).text
					defendant2 = defendant2 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 15).text
					defendant2 = defendant2 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 16).text
					defendant2 = defendant2 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 17).text
				end

				if browser.table(:id => "pty_table").td(:class => "data", :index => 19).exists?
					defendant3 = browser.table(:id => "pty_table").td(:class => "data", :index => 19).text
					defendant3 = defendant3 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 21).text
					defendant3 = defendant3 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 22).text
					defendant3 = defendant3 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 23).text
				end

				if browser.table(:id => "pty_table").td(:class => "data", :index => 25).exists?
					defendant4 = browser.table(:id => "pty_table").td(:class => "data", :index => 25).text
					defendant4 = defendant4 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 27).text
					defendant4 = defendant4 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 28).text
					defendant4 = defendant4 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 29).text
				end

				if browser.table(:id => "pty_table").td(:class => "data", :index => 31).exists?
					defendant5 = browser.table(:id => "pty_table").td(:class => "data", :index => 31).text
					defendant5 = defendant5 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 33).text
					defendant5 = defendant5 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 34).text
					defendant5 = defendant5 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 35).text
				end

				if browser.table(:id => "dkt_table").text.include?("%")
					puts "% FOUND"

					browser.table(:id => "dkt_table").tr(:class => "dkt_text").each do |tr|
						if tr.text.include?("%")
							judgement_amount = tr.text
						end
					end
					# judgement_amount = browser.table(:id => "dkt_table").text.split("%")
				else
					puts "NO MONETARY JUDGEMENT FOUND"
				end
				
			end

			plaintiff_data = plaintiff + " #{plaintiff1}" + " #{plaintiff2}" + " #{plaintiff3}"

			if judgement_amount != 0
				judgement_amount = judgement_amount.split("$")
				judgement_amount = judgement_amount[1].split(" ")
				judgement_amount = "$" + judgement_amount[0]
			end

			date = date.split(" ")
			date = date.last

			case_data.push(date)
			case_data.push("#{year}-#{case_codes[code_num]}-#{case_num}")
			case_data.push(plaintiff_data)
			case_data.push(judgement_amount)
			case_data.push(defendant1)

			if defendant2 != 0
				case_data.push(defendant2)
			end

			if defendant3 != 0
				case_data.push(defendant3)
			end

			if defendant4 != 0
				case_data.push(defendant4)
			end 

			if defendant5 != 0
				case_data.push(defendant5)
			end

			sleep 1

			browser.windows.last.close

		elsif (browser.button(:value, "View").exists? == false)

			sleep 3

			code_num += 1

			browser.text_field(:id, 'case_number').set("#{year} #{case_codes[code_num]} #{case_num}")

			browser.select_list(:id, 'party_code').select "PLAINTIFF"

			browser.scroll.to :bottom

			browser.button(:id, 'search_button_2').click

			if browser.button(:value, "View").exists?

				browser.button(:value, "View").click

				#PUT DATA COLLECTION BELOW


			date = 0
			plaintiff = 0
			plaintiff1 = 0
			plaintiff2 = 0
			plaintiff3 = 0
			defendant1 = 0
			defendant2 = 0
			defendant3 = 0
			defendant4 = 0
			defendant5 = 0
			judgement_amount = 0

			browser.windows.last.use do 
				
				date = browser.td(:class => "page_header", :index => 1).text
				plaintiff = browser.table(:id => "pty_table").td(:class => "data", :index => 1).text
				plaintiff1 = browser.table(:id => "pty_table").td(:class => "data", :index => 3).text
				plaintiff2 = browser.table(:id => "pty_table").td(:class => "data", :index => 4).text
				plaintiff3 = browser.table(:id => "pty_table").td(:class => "data", :index => 5).text

				defendant1 = browser.table(:id => "pty_table").td(:class => "data", :index => 7).text
				defendant1 = defendant1 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 9).text
				defendant1 = defendant1 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 10).text
				defendant1 = defendant1 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 11).text

				if browser.table(:id => "pty_table").td(:class => "data", :index => 13).exists?

					defendant2 = browser.table(:id => "pty_table").td(:class => "data", :index => 13).text
					defendant2 = defendant2 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 15).text
					defendant2 = defendant2 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 16).text
					defendant2 = defendant2 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 17).text
				end

				if browser.table(:id => "pty_table").td(:class => "data", :index => 19).exists?
					defendant3 = browser.table(:id => "pty_table").td(:class => "data", :index => 19).text
					defendant3 = defendant3 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 21).text
					defendant3 = defendant3 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 22).text
					defendant3 = defendant3 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 23).text
				end

				if browser.table(:id => "pty_table").td(:class => "data", :index => 25).exists?
					defendant4 = browser.table(:id => "pty_table").td(:class => "data", :index => 25).text
					defendant4 = defendant4 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 27).text
					defendant4 = defendant4 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 28).text
					defendant4 = defendant4 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 29).text
				end

				if browser.table(:id => "pty_table").td(:class => "data", :index => 31).exists?
					defendant5 = browser.table(:id => "pty_table").td(:class => "data", :index => 31).text
					defendant5 = defendant5 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 33).text
					defendant5 = defendant5 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 34).text
					defendant5 = defendant5 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 35).text
				end

				if browser.table(:id => "dkt_table").text.include?("%")
					puts "% FOUND"

					browser.table(:id => "dkt_table").tr(:class => "dkt_text").each do |tr|
						if tr.text.include?("%")
							judgement_amount = tr.text
						end
					end
					# judgement_amount = browser.table(:id => "dkt_table").text.split("%")
				else
					puts "NO MONETARY JUDGEMENT FOUND"
				end
				
			end

			plaintiff_data = plaintiff + " #{plaintiff1}" + " #{plaintiff2}" + " #{plaintiff3}"

			if judgement_amount != 0
				judgement_amount = judgement_amount.split("$")
				judgement_amount = judgement_amount[1].split(" ")
				judgement_amount = "$" + judgement_amount[0]
			end

			date = date.split(" ")
			date = date.last

			case_data.push(date)
			case_data.push("#{year}-#{case_codes[code_num]}-#{case_num}")
			case_data.push(plaintiff_data)
			case_data.push(judgement_amount)
			case_data.push(defendant1)

			if defendant2 != 0
				case_data.push(defendant2)
			end

			if defendant3 != 0
				case_data.push(defendant3)
			end

			if defendant4 != 0
				case_data.push(defendant4)
			end 

			if defendant5 != 0
				case_data.push(defendant5)
			end

				sleep 1

				browser.windows.last.close

			elsif (browser.button(:value, 'View').exists? == false)
				
				sleep 3

				code_num += 1

				browser.text_field(:id, 'case_number').set("#{year} #{case_codes[code_num]} #{case_num}")

				browser.select_list(:id, 'party_code').select "PLAINTIFF"

				browser.scroll.to :bottom

				browser.button(:id, 'search_button_2').click

				if browser.button(:value, "View").exists?

					browser.button(:value, "View").click

					#PUT DATA COLLECTION BELOW


			date = 0
			plaintiff = 0
			plaintiff1 = 0
			plaintiff2 = 0
			plaintiff3 = 0
			defendant1 = 0
			defendant2 = 0
			defendant3 = 0
			defendant4 = 0
			defendant5 = 0
			judgement_amount = 0

			browser.windows.last.use do 
				
				date = browser.td(:class => "page_header", :index => 1).text
				plaintiff = browser.table(:id => "pty_table").td(:class => "data", :index => 1).text
				plaintiff1 = browser.table(:id => "pty_table").td(:class => "data", :index => 3).text
				plaintiff2 = browser.table(:id => "pty_table").td(:class => "data", :index => 4).text
				plaintiff3 = browser.table(:id => "pty_table").td(:class => "data", :index => 5).text

				defendant1 = browser.table(:id => "pty_table").td(:class => "data", :index => 7).text
				defendant1 = defendant1 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 9).text
				defendant1 = defendant1 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 10).text
				defendant1 = defendant1 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 11).text

				if browser.table(:id => "pty_table").td(:class => "data", :index => 13).exists?

					defendant2 = browser.table(:id => "pty_table").td(:class => "data", :index => 13).text
					defendant2 = defendant2 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 15).text
					defendant2 = defendant2 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 16).text
					defendant2 = defendant2 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 17).text
				end

				if browser.table(:id => "pty_table").td(:class => "data", :index => 19).exists?
					defendant3 = browser.table(:id => "pty_table").td(:class => "data", :index => 19).text
					defendant3 = defendant3 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 21).text
					defendant3 = defendant3 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 22).text
					defendant3 = defendant3 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 23).text
				end

				if browser.table(:id => "pty_table").td(:class => "data", :index => 25).exists?
					defendant4 = browser.table(:id => "pty_table").td(:class => "data", :index => 25).text
					defendant4 = defendant4 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 27).text
					defendant4 = defendant4 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 28).text
					defendant4 = defendant4 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 29).text
				end

				if browser.table(:id => "pty_table").td(:class => "data", :index => 31).exists?
					defendant5 = browser.table(:id => "pty_table").td(:class => "data", :index => 31).text
					defendant5 = defendant5 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 33).text
					defendant5 = defendant5 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 34).text
					defendant5 = defendant5 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 35).text
				end

				if browser.table(:id => "dkt_table").text.include?("%")
					puts "% FOUND"

					browser.table(:id => "dkt_table").tr(:class => "dkt_text").each do |tr|
						if tr.text.include?("%")
							judgement_amount = tr.text
						end
					end
					# judgement_amount = browser.table(:id => "dkt_table").text.split("%")
				else
					puts "NO MONETARY JUDGEMENT FOUND"
				end
				
			end

			plaintiff_data = plaintiff + " #{plaintiff1}" + " #{plaintiff2}" + " #{plaintiff3}"

			if judgement_amount != 0
				judgement_amount = judgement_amount.split("$")
				judgement_amount = judgement_amount[1].split(" ")
				judgement_amount = "$" + judgement_amount[0]
			end

			date = date.split(" ")
			date = date.last

			case_data.push(date)
			case_data.push("#{year}-#{case_codes[code_num]}-#{case_num}")
			case_data.push(plaintiff_data)
			case_data.push(judgement_amount)
			case_data.push(defendant1)

			if defendant2 != 0
				case_data.push(defendant2)
			end

			if defendant3 != 0
				case_data.push(defendant3)
			end

			if defendant4 != 0
				case_data.push(defendant4)
			end 

			if defendant5 != 0
				case_data.push(defendant5)
			end

					sleep 1

					browser.windows.last.close

				elsif (browser.button(:value, 'View').exists? == false)
				
					sleep 3

					code_num += 1

					browser.text_field(:id, 'case_number').set("#{year} #{case_codes[code_num]} #{case_num}")

					browser.select_list(:id, 'party_code').select "PLAINTIFF"

					browser.scroll.to :bottom

					browser.button(:id, 'search_button_2').click

					if browser.button(:value, "View").exists?

						browser.button(:value, "View").click

						#PUT DATA COLLECTION BELOW


			date = 0
			plaintiff = 0
			plaintiff1 = 0
			plaintiff2 = 0
			plaintiff3 = 0
			defendant1 = 0
			defendant2 = 0
			defendant3 = 0
			defendant4 = 0
			defendant5 = 0
			judgement_amount = 0

			browser.windows.last.use do 
				
				date = browser.td(:class => "page_header", :index => 1).text
				plaintiff = browser.table(:id => "pty_table").td(:class => "data", :index => 1).text
				plaintiff1 = browser.table(:id => "pty_table").td(:class => "data", :index => 3).text
				plaintiff2 = browser.table(:id => "pty_table").td(:class => "data", :index => 4).text
				plaintiff3 = browser.table(:id => "pty_table").td(:class => "data", :index => 5).text

				defendant1 = browser.table(:id => "pty_table").td(:class => "data", :index => 7).text
				defendant1 = defendant1 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 9).text
				defendant1 = defendant1 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 10).text
				defendant1 = defendant1 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 11).text

				if browser.table(:id => "pty_table").td(:class => "data", :index => 13).exists?

					defendant2 = browser.table(:id => "pty_table").td(:class => "data", :index => 13).text
					defendant2 = defendant2 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 15).text
					defendant2 = defendant2 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 16).text
					defendant2 = defendant2 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 17).text
				end

				if browser.table(:id => "pty_table").td(:class => "data", :index => 19).exists?
					defendant3 = browser.table(:id => "pty_table").td(:class => "data", :index => 19).text
					defendant3 = defendant3 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 21).text
					defendant3 = defendant3 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 22).text
					defendant3 = defendant3 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 23).text
				end

				if browser.table(:id => "pty_table").td(:class => "data", :index => 25).exists?
					defendant4 = browser.table(:id => "pty_table").td(:class => "data", :index => 25).text
					defendant4 = defendant4 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 27).text
					defendant4 = defendant4 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 28).text
					defendant4 = defendant4 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 29).text
				end

				if browser.table(:id => "pty_table").td(:class => "data", :index => 31).exists?
					defendant5 = browser.table(:id => "pty_table").td(:class => "data", :index => 31).text
					defendant5 = defendant5 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 33).text
					defendant5 = defendant5 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 34).text
					defendant5 = defendant5 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 35).text
				end

				if browser.table(:id => "dkt_table").text.include?("%")
					puts "% FOUND"

					browser.table(:id => "dkt_table").tr(:class => "dkt_text").each do |tr|
						if tr.text.include?("%")
							judgement_amount = tr.text
						end
					end
					# judgement_amount = browser.table(:id => "dkt_table").text.split("%")
				else
					puts "NO MONETARY JUDGEMENT FOUND"
				end
				
			end

			plaintiff_data = plaintiff + " #{plaintiff1}" + " #{plaintiff2}" + " #{plaintiff3}"

			if judgement_amount != 0
				judgement_amount = judgement_amount.split("$")
				judgement_amount = judgement_amount[1].split(" ")
				judgement_amount = "$" + judgement_amount[0]
			end

			date = date.split(" ")
			date = date.last

			case_data.push(date)
			case_data.push("#{year}-#{case_codes[code_num]}-#{case_num}")
			case_data.push(plaintiff_data)
			case_data.push(judgement_amount)
			case_data.push(defendant1)

			if defendant2 != 0
				case_data.push(defendant2)
			end

			if defendant3 != 0
				case_data.push(defendant3)
			end

			if defendant4 != 0
				case_data.push(defendant4)
			end 

			if defendant5 != 0
				case_data.push(defendant5)
			end

						sleep 1

						browser.windows.last.close

					elsif (browser.button(:value, "View").exists? == false)

			# 			sleep 3

			# 			code_num += 1

			# 			browser.text_field(:id, 'case_number').set("#{year} #{case_codes[code_num]} #{case_num}")

			# 			browser.select_list(:id, 'party_code').select "PLAINTIFF"

			# 			browser.scroll.to :bottom

			# 			browser.button(:id, 'search_button_2').click

			# 			if browser.button(:value, "View").exists?

			# 				browser.button(:value, "View").click

			# 				#PUT DATA COLLECTION BELOW

			# 				date = 0
			# plaintiff = 0
			# plaintiff1 = 0
			# plaintiff2 = 0
			# plaintiff3 = 0
			# defendant1 = 0
			# defendant2 = 0
			# defendant3 = 0
			# defendant4 = 0
			# defendant5 = 0
			# judgement_amount = 0

			# browser.windows.last.use do 
				
			# 	date = browser.td(:class => "page_header", :index => 1).text
			# 	plaintiff = browser.table(:id => "pty_table").td(:class => "data", :index => 1).text
			# 	plaintiff1 = browser.table(:id => "pty_table").td(:class => "data", :index => 3).text
			# 	plaintiff2 = browser.table(:id => "pty_table").td(:class => "data", :index => 4).text
			# 	plaintiff3 = browser.table(:id => "pty_table").td(:class => "data", :index => 5).text

			# 	defendant1 = browser.table(:id => "pty_table").td(:class => "data", :index => 7).text
			# 	defendant1 = defendant1 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 9).text
			# 	defendant1 = defendant1 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 10).text
			# 	defendant1 = defendant1 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 11).text

			# 	if browser.table(:id => "pty_table").td(:class => "data", :index => 13).exists?

			# 		defendant2 = browser.table(:id => "pty_table").td(:class => "data", :index => 13).text
			# 		defendant2 = defendant2 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 15).text
			# 		defendant2 = defendant2 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 16).text
			# 		defendant2 = defendant2 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 17).text
			# 	end

			# 	if browser.table(:id => "pty_table").td(:class => "data", :index => 19).exists?
			# 		defendant3 = browser.table(:id => "pty_table").td(:class => "data", :index => 19).text
			# 		defendant3 = defendant3 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 21).text
			# 		defendant3 = defendant3 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 22).text
			# 		defendant3 = defendant3 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 23).text
			# 	end

			# 	if browser.table(:id => "pty_table").td(:class => "data", :index => 25).exists?
			# 		defendant4 = browser.table(:id => "pty_table").td(:class => "data", :index => 25).text
			# 		defendant4 = defendant4 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 27).text
			# 		defendant4 = defendant4 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 28).text
			# 		defendant4 = defendant4 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 29).text
			# 	end

			# 	if browser.table(:id => "pty_table").td(:class => "data", :index => 31).exists?
			# 		defendant5 = browser.table(:id => "pty_table").td(:class => "data", :index => 31).text
			# 		defendant5 = defendant5 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 33).text
			# 		defendant5 = defendant5 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 34).text
			# 		defendant5 = defendant5 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 35).text
			# 	end

			# 	if browser.table(:id => "dkt_table").text.include?("%")
			# 		puts "% FOUND"

			# 		browser.table(:id => "dkt_table").tr(:class => "dkt_text").each do |tr|
			# 			if tr.text.include?("%")
			# 				judgement_amount = tr.text
			# 			end
			# 		end
			# # 		# judgement_amount = browser.table(:id => "dkt_table").text.split("%")
			# # 	else
			# 		puts "NO MONETARY JUDGEMENT FOUND"
			# 	end
				
			# end

			# plaintiff_data = plaintiff + " #{plaintiff1}" + " #{plaintiff2}" + " #{plaintiff3}"

			# if judgement_amount != 0
			# 	judgement_amount = judgement_amount.split("$")
			# 	judgement_amount = judgement_amount[1].split(" ")
			# 	judgement_amount = "$" + judgement_amount[0]
			# end

			# date = date.split(" ")
			# date = date.last

			# case_data.push(date)
			# case_data.push("#{year}-#{case_codes[code_num]}-#{case_num}")
			# case_data.push(plaintiff_data)
			# case_data.push(judgement_amount)
			# case_data.push(defendant1)

			# if defendant2 != 0
			# 	case_data.push(defendant2)
			# end

			# if defendant3 != 0
			# 	case_data.push(defendant3)
			# end

			# if defendant4 != 0
			# 	case_data.push(defendant4)
			# end 

			# if defendant5 != 0
			# 	case_data.push(defendant5)
			# end

			# 				sleep 1

			# 				browser.windows.last.close

			# 			elsif (browser.button(:value, "View").exists? == false)

			# 				browser.scroll.to :bottom

							puts "END OF VALID CASES FOR YEAR"

							looper = false
						# end
					end
				end
			end
		end
			
			puts case_num
			puts case_codes[code_num]

			if case_codes[code_num] == "CVF"
				cvf_counter += 1
			elsif case_codes[code_num] == "CVG"
				cvg_counter += 1
			elsif case_codes[code_num] == "CVI"
				cvi_counter += 1
			else 
				cve_counter += 1
			end


			case_num += 1
		end

	# browser.goto "http://www.fcmcclerk.com/case/search"

puts "#{year} search complete!"
puts "#{case_num}"
puts "#{cvf_counter} CVF cases found"
puts "#{cvh_counter} CVH cases found"
puts "#{cvg_counter} CVG cases found"
puts "#{cvi_counter} CVI cases found"
puts "#{cve_counter} CVE cases found"
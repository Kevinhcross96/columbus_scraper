require 'HTTParty'
require 'Nokogiri'
require 'JSON'
require 'open-uri'
require 'certified'
require 'mechanize'
require 'csv'
require 'watir'
require 'watir-scroll'
require 'active_support'

def human_tester(plaintiff3)

				human_test = true

					if ((plaintiff3.length > 4) || (plaintiff3.length < 2))
						human_test = false
					elsif plaintiff3.include?("EMERGENCY")
						human_test = false
					elsif plaintiff3.include?("APARTMENT")
						human_test = false
					elsif plaintiff3.include?("COMMONS")
						human_test = false
					elsif plaintiff3.include?("EQUIPMENT")
						human_test = false
					elsif plaintiff3.include?("WHISPERING")
						human_test = false
					elsif plaintiff3.include?("BANKS")
						human_test = false
					elsif plaintiff3.include?("PAWNSHOP")
						human_test = false
					elsif plaintiff3.include?("NURSERY")
						human_test = false
					elsif plaintiff3.include?("PEDIATRICS")
						human_test = false
					elsif plaintiff3.include?("TRADITIONAL")
						human_test = false
					elsif plaintiff3.include?("HARDWOOD")
						human_test = false
					elsif plaintiff3.include?("FLOORS")
						human_test = false
					elsif plaintiff3.include?("BEVERAGE")
						human_test = false
					elsif plaintiff3.include?("PHYSICAL")
						human_test = false
					elsif plaintiff3.include?("THERAPY")
						human_test = false
					elsif plaintiff3.include?("STATION")
						human_test = false
					elsif plaintiff3.include?("PAWN")
						human_test = false
					elsif plaintiff3.include?("SHOP")
						human_test = false
					elsif plaintiff3.include?("INTERNAL")
						human_test = false
					elsif plaintiff3.include?("MEDICINE")
						human_test = false
					elsif plaintiff3.include?("DOCTORS")
						human_test = false
					elsif plaintiff3.include?("REALTORS")
						human_test = false
					elsif plaintiff3.include?("ELECTRICAL")
						human_test = false
					elsif plaintiff3.include?("FAST")
						human_test = false
					elsif plaintiff3.include?("SIGNS")
						human_test = false
					elsif plaintiff3.include?("COURIER")
						human_test = false
					elsif plaintiff3.include?("MESSENGERS")
						human_test = false
					elsif plaintiff3.include?("ALWAYS")
						human_test = false
					elsif plaintiff3.include?("PAYDAY")
						human_test = false
					elsif plaintiff3.include?("HEIRITAGE")
						human_test = false
					elsif plaintiff3.include?("TRANSPORTATION")
						human_test = false
					elsif plaintiff3.include?("RESOURCES")
						human_test = false
					elsif plaintiff3.include?("FLOORING")
						human_test = false
					elsif plaintiff3.include?("CONCRETE")
						human_test = false
					elsif plaintiff3.include?("CONSULTANT")
						human_test = false
					elsif plaintiff3.include?("ANESTHESIOLOGISTS")
						human_test = false
					elsif plaintiff3.include?("HOME")
						human_test = false
					elsif plaintiff3.include?("ADVANTAGE")
						human_test = false
					elsif plaintiff3.include?("CITIBANK(USA)")
						human_test = false
					elsif plaintiff3.include?("FORMALWEAR")
						human_test = false
					elsif plaintiff3.include?("COLUMBUS")
						human_test = false
					elsif plaintiff3.include?("PHYSICIAN")
						human_test = false
					elsif plaintiff3.include?("ANESTHESIA")
						human_test = false
					elsif plaintiff3.include?("UROLOGY")
						human_test = false
					elsif plaintiff3.include?("OLD")
						human_test = false
					elsif plaintiff3.include?("FREIGHTLINES")
						human_test = false
					elsif plaintiff3.include?("DOMINION")
						human_test = false
					elsif plaintiff3.include?("LOGISTICS")
						human_test = false
					elsif plaintiff3.include?("USF")
						human_test = false
					elsif plaintiff3.include?("ORTHOPEDICS")
						human_test = false
					elsif plaintiff3.include?("ENCORE")
						human_test = false
					elsif plaintiff3.include?("FUTURE")
						human_test = false
					elsif plaintiff3.include?("CELLULAR")
						human_test = false
					elsif plaintiff3.include?("VENTURE")
						human_test = false
					elsif plaintiff3.include?("JOINT")
						human_test = false
					elsif plaintiff3.include?("IMPORTS")
						human_test = false
					elsif plaintiff3.include?("CHEMISTRY")
						human_test = false
					elsif plaintiff3.include?("CHEMISTRE")
						human_test = false
					elsif plaintiff3.include?("BODY")
						human_test = false
					elsif plaintiff3.include?("CONSULTANTS")
						human_test = false
					elsif plaintiff3.include?("RHEUMATOLOGY")
						human_test = false
					elsif plaintiff3.include?("OTHER")
						human_test = false
					elsif plaintiff3.include?("ORTHOPEDIC")
						human_test = false
					elsif plaintiff3.include?("UNION")
						human_test = false
					elsif plaintiff3.include?("MIDSTATE")
						human_test = false
					elsif plaintiff3.include?("MIDWEST")
						human_test = false
					elsif plaintiff3.include?("ALLERGY")
						human_test = false
					elsif plaintiff3.include?("COLLECT")
						human_test = false
					elsif plaintiff3.include?("THRIFT")
						human_test = false
					elsif plaintiff3.include?("COLLECT/THRIFT")
						human_test = false
					elsif plaintiff3.include?("EXCALIBUR")
						human_test = false
					elsif plaintiff3.include?("INN")
						human_test = false
					elsif plaintiff3.include?("REMODELING")
						human_test = false
					elsif plaintiff3.include?("RAMADA")
						human_test = false
					elsif plaintiff3.include?("CITIBANK(SOUTH DAKOTA)")
						human_test = false
					elsif plaintiff3.include?("LAWN")
						human_test = false
					elsif plaintiff3.include?("TURF")
						human_test = false
					elsif plaintiff3.include?("INC")
						human_test = false
					elsif plaintiff3.include?("MY")
						human_test = false
					elsif plaintiff3.include?("REPUBLIC")
						human_test = false
					elsif plaintiff3.include?("HOUSE")
						human_test = false
					elsif plaintiff3.include?("CITIBANKS(USA)")
						human_test = false
					elsif plaintiff3.include?("CASH")
						human_test = false
					elsif plaintiff3.include?("CHECKS")
						human_test = false
					elsif plaintiff3.include?("OFFICE")
						human_test = false
					elsif plaintiff3.include?("CLEANING")
						human_test = false
					elsif plaintiff3.include?("AFTER")
						human_test = false
					elsif plaintiff3.include?("PRECISE")
						human_test = false
					elsif plaintiff3.include?("COLLISION")
						human_test = false
					elsif plaintiff3.include?("REPAIR")
						human_test = false
					elsif plaintiff3.include?("ENCHANTED")
						human_test = false
					elsif plaintiff3.include?("PORTFOLIOS")
						human_test = false
					elsif plaintiff3.include?("GALAXY")
						human_test = false
					elsif plaintiff3.include?("ACQUISITIONS")
						human_test = false
					elsif plaintiff3.include?("APART")
						human_test = false
					elsif plaintiff3.include?("MORTGAGE")
						human_test = false
					elsif plaintiff3.include?("NEWS")
						human_test = false
					elsif plaintiff3.include?("SUBURBAN")
						human_test = false
					elsif plaintiff3.include?("PUBLICATIONS")
						human_test = false
					elsif plaintiff3.include?("BGS")
						human_test = false
					elsif plaintiff3.include?("AUTOMOTIVE")
						human_test = false
					elsif plaintiff3.include?("CASHING")
						human_test = false
					elsif plaintiff3.include?("CARRY")
						human_test = false
					elsif plaintiff3.include?("LANDSCAPES")
						human_test = false
					elsif plaintiff3.include?("GEICO")
						human_test = false
					elsif plaintiff3.include?("COPANY")
						human_test = false
					elsif plaintiff3.include?("ESTATES")
						human_test = false
					elsif plaintiff3.include?("ACQUISTITION")
						human_test = false
					elsif plaintiff3.include?("OH")
						human_test = false
					elsif plaintiff3.include?("SPORTSWEAR")
						human_test = false
					elsif plaintiff3.include?("THOROUGHBRED")
						human_test = false
					elsif plaintiff3.include?("MAGAZINE")
						human_test = false
					elsif plaintiff3.include?("ALTERATIONS")
						human_test = false
					elsif plaintiff3.include?("ASSOCAITES")
						human_test = false
					elsif plaintiff3.include?("EXCAVATING")
						human_test = false
					elsif plaintiff3.include?("MOBILITY")
						human_test = false
					elsif plaintiff3.include?("ARTISITIC")
						human_test = false
					elsif plaintiff3.include?("CARPET")
						human_test = false
					elsif plaintiff3.include?("PLASTICS")
						human_test = false
					elsif plaintiff3.include?("INFINITY")
						human_test = false
					elsif plaintiff3.include?("DEALERSHIP")
						human_test = false
					elsif plaintiff3.include?("ADMINISTRATION")
						human_test = false
					elsif plaintiff3.include?("XEROX")
						human_test = false
					elsif plaintiff3.include?("RESERVE")
						human_test = false
					elsif plaintiff3.include?("USA")
						human_test = false
					elsif plaintiff3.include?("CAPTIAL")
						human_test = false
					elsif plaintiff3.include?("MANAGED")
						human_test = false
					elsif plaintiff3.include?("HOSITAL")
						human_test = false
					elsif plaintiff3.include?("CLINICS")
						human_test = false
					elsif plaintiff3.include?("CAR")
						human_test = false
					elsif plaintiff3.include?("PARTS")
						human_test = false
					elsif plaintiff3.include?("PRIMETIME")
						human_test = false
					elsif plaintiff3.include?("SPORTING")
						human_test = false
					elsif plaintiff3.include?("TIME")
						human_test = false
					elsif plaintiff3.include?("ASSOCIATION")
						human_test = false
					elsif plaintiff3.include?("CONDOMINIUM")
						human_test = false
					elsif plaintiff3.include?("ESTATE")
						human_test = false
					elsif plaintiff3.include?("TRUCKING")
						human_test = false
					elsif plaintiff3.include?("EURO")
						human_test = false
					elsif plaintiff3.include?("LANDMARK")
						human_test = false
					elsif plaintiff3.include?("AMERICA")
						human_test = false
					elsif plaintiff3.include?("NEIGHBORHOOD")
						human_test = false
					elsif plaintiff3.include?("CONSERVATION")
						human_test = false
					elsif plaintiff3.include?("SVCS")
						human_test = false
					elsif plaintiff3.include?("SKYCASTERS")
						human_test = false
					elsif plaintiff3.include?("HD")
						human_test = false
					elsif plaintiff3.include?("HOMEOWNERS")
						human_test = false
					elsif plaintiff3.include?("DETACHED")
						human_test = false
					elsif plaintiff3.include?("NINETY")
						human_test = false
					elsif plaintiff3.include?("TWELVE")
						human_test = false
					elsif plaintiff3.include?("ONE")
						human_test = false
					elsif plaintiff3.include?("JP")
						human_test = false
					elsif plaintiff3.include?("SURGERY")
						human_test = false
					elsif plaintiff3.include?("ORAL")
						human_test = false
					elsif plaintiff3.include?("REDI-MIX")
						human_test = false
					elsif plaintiff3.include?("INCORPORATED")
						human_test = false
					elsif plaintiff3.include?("TOWNHOMES")
						human_test = false
					elsif plaintiff3.include?("L.L.C.")
						human_test = false
					elsif plaintiff3.include?("AUTOVEST")
						human_test = false
					elsif plaintiff3.include?("COMMUNITY")
						human_test = false
					elsif plaintiff3.include?("MANGEMENT")
						human_test = false
					elsif plaintiff3.include?("ENERBANK")
						human_test = false
					elsif plaintiff3.include?("CITY")
						human_test = false
					elsif plaintiff3.include?("GYNECOLOGY")
						human_test = false
					elsif plaintiff3.include?("PERSONAL")
						human_test = false
					elsif plaintiff3.include?("TOUCH")
						human_test = false
					elsif plaintiff3.include?("MACHINERY")
						human_test = false
					elsif plaintiff3.include?("OHIO")
						human_test = false
					elsif plaintiff3.include?("REPRODUCTIVE")
						human_test = false
					elsif plaintiff3.include?("CLUB")
						human_test = false
					elsif plaintiff3.include?("LTD")
						human_test = false
					elsif plaintiff3.include?("CO.")
						human_test = false
					elsif plaintiff3.include?("&")
						human_test = false
					elsif plaintiff3.include?("AND")
						human_test = false
					elsif plaintiff3.include?("GARAGE")
						human_test = false
					elsif plaintiff3.include?("COMPANY")
						human_test = false
					elsif plaintiff3.include?("LTD.")
						human_test = false
					elsif plaintiff3.include?("INC")
						human_test = false
					elsif plaintiff3.include?("MEDICAL")
						human_test = false
					elsif plaintiff3.include?("CENTER")
						human_test = false
					elsif plaintiff3.include?("ST")
						human_test = false
					elsif plaintiff3.include?("CAB")
						human_test = false
					# elsif plaintiff3.include?("EAST")
						# human_test = false
					# elsif plaintiff3.include?("WEST")
						# human_test = false
					# elsif plaintiff3.include?("NORTH")
						# human_test = false
					# elsif plaintiff3.include?("SOUTH")
						# human_test = false
					elsif plaintiff3.include?("SCHOOL")
						human_test = false
					elsif plaintiff3.include?("ELEMENTARY")
						human_test = false
					elsif plaintiff3.include?("UNIVERSITY")
						human_test = false
					elsif plaintiff3.include?("ACADEMY")
						human_test = false
					elsif plaintiff3.include?("DENTISTRY")
						human_test = false
					elsif plaintiff3.include?("PRACTICE")
						human_test = false
					elsif plaintiff3.include?("GROUP")
						human_test = false
					elsif plaintiff3.include?("MOTOR")
						human_test = false
					elsif plaintiff3.include?("CREDIT")
						human_test = false
					elsif plaintiff3.include?("THE")
						human_test = false
					elsif plaintiff3.include?("PROPERTY")
						human_test = false
					elsif plaintiff3.include?("MANAGEMENT")
						human_test = false
					elsif plaintiff3.include?("DEPT")
						human_test = false
					elsif plaintiff3.include?("TAXATION")
						human_test = false
					elsif plaintiff3.include?("OF")
						human_test = false
					elsif plaintiff3.include?("CORP")
						human_test = false
					elsif plaintiff3.include?("ASSOCIATES")
						human_test = false
					elsif plaintiff3.include?("CO")
						human_test = false
					elsif plaintiff3.include?("LLC")
						human_test = false
					elsif plaintiff3.include?("BANK")
						human_test = false
					# elsif plaintiff3.include?("MONEY")
						# human_test = false
					elsif plaintiff3.include?("INVESTMENT")
						human_test = false
					elsif plaintiff3.include?("PROPERTIES")
						human_test = false
					elsif plaintiff3.include?("RENT")
						human_test = false
					elsif plaintiff3.include?("VACATION")
						human_test = false
					elsif plaintiff3.include?("RENTALS")
						human_test = false
					elsif plaintiff3.include?("ASSOC")
						human_test = false
					elsif plaintiff3.include?("BROS")
						human_test = false
					elsif plaintiff3.include?("DELI")
						human_test = false
					elsif plaintiff3.include?("EXCHANGE")
						human_test = false
					elsif plaintiff3.include?("SERVICES")
						human_test = false
					elsif plaintiff3.include?("MGMT")
						human_test = false
					elsif plaintiff3.include?("FINANCIAL")
						human_test = false
					elsif plaintiff3.include?("FINANCES")
						human_test = false
					elsif plaintiff3.include?("FUNDING")
						human_test = false
					elsif plaintiff3.include?("EXCHANGE")
						human_test = false
					elsif plaintiff3.include?("AMERICAN")
						human_test = false
					elsif plaintiff3.include?("FUNERAL")
						human_test = false
					elsif plaintiff3.include?("LAW")
						human_test = false
					elsif plaintiff3.include?("HOSPITAL")
						human_test = false
					elsif plaintiff3.include?("EXPRESS")
						human_test = false
					elsif plaintiff3.include?("DISCOVER")
						human_test = false
					elsif plaintiff3.include?("APARTMENTS")
						human_test = false
					elsif plaintiff3.include?("INDEMNITY")
						human_test = false
					elsif plaintiff3.include?("SAVINGS")
						human_test = false
					elsif plaintiff3.include?("LOAN")
						human_test = false
					elsif plaintiff3.include?("SON")
						human_test = false
					elsif plaintiff3.include?("SONS")
						human_test = false
					elsif plaintiff3.include?("INSURANCE")
						human_test = false
					elsif plaintiff3.include?("REALTY")
						human_test = false
					elsif plaintiff3.include?("AMBULANCE")
						human_test = false
					elsif plaintiff3.include?("MUTUAL")
						human_test = false
					elsif plaintiff3.include?("JEWELERS")
						human_test = false
					elsif plaintiff3.include?("ASSET")
						human_test = false
					elsif plaintiff3.include?("ACCEPTANCE")
						human_test = false
					elsif plaintiff3.include?("INDEMNITY")
						human_test = false
					elsif plaintiff3.include?("BAKERY")
						human_test = false
					elsif plaintiff3.include?("MARKET")
						human_test = false
					elsif plaintiff3.include?("SUPERMARKET")
						human_test = false
					elsif plaintiff3.include?("OF")
						human_test = false
					elsif plaintiff3.include?("AUTO")
						human_test = false
					elsif plaintiff3.include?("GUARDIAN")
						human_test = false
					elsif plaintiff3.include?("PROTECTION")
						human_test = false
					elsif plaintiff3.include?("SERV")
						human_test = false
					elsif plaintiff3.include?("PARTNERS")
						human_test = false
					elsif plaintiff3.include?("CCR")
						human_test = false
					elsif plaintiff3.include?("FREIGHT")
						human_test = false
					elsif plaintiff3.include?("DISTRIBUTION")
						human_test = false
					elsif plaintiff3.include?("TECHNOLOGIES")
						human_test = false
					elsif plaintiff3.include?("SYSTEM")
						human_test = false
					elsif plaintiff3.include?("SYSTEMS")
						human_test = false
					elsif plaintiff3.include?("HOTEL")
						human_test = false
					elsif plaintiff3.include?("HOTELS")
						human_test = false
					elsif plaintiff3.include?("MOTEL")
						human_test = false
					elsif plaintiff3.include?("MOTELS")
						human_test = false
					elsif plaintiff3.include?("CONNECTION")
						human_test = false
					# elsif plaintiff3.include?("CASH")
						# human_test = false
					elsif plaintiff3.include?("COLLEGE")
						human_test = false
					elsif plaintiff3.include?("HOSPICE")
						human_test = false
					elsif plaintiff3.include?("RETIREMENT")
						human_test = false
					elsif plaintiff3.include?("FIRST")
						human_test = false
					elsif plaintiff3.include?("MERIT")
						human_test = false
					elsif plaintiff3.include?("FITNESS")
						human_test = false
					elsif plaintiff3.include?("BAR")
						human_test = false
					elsif plaintiff3.include?("GRILL")
						human_test = false
					elsif plaintiff3.include?("LOBSTER")
						human_test = false
					elsif plaintiff3.include?("GARDEN")
						human_test = false
					elsif plaintiff3.include?("NORTHEAST")
						human_test = false
					elsif plaintiff3.include?("NORTHWEST")
						human_test = false
					elsif plaintiff3.include?("SOUTHEAST")
						human_test = false
					elsif plaintiff3.include?("SOUTHWEST")
						human_test = false
					elsif plaintiff3.include?("CITIBANK")
						human_test = false
					elsif plaintiff3.include?("ADVANCE")
						human_test = false
					elsif plaintiff3.include?("#")
						human_test = false
					elsif plaintiff3.include?("MART")
						human_test = false
					elsif plaintiff3.include?("AMERICAS")
						human_test = false
					elsif plaintiff3.include?("TRUST")
						human_test = false
					elsif plaintiff3.include?("PARTNERSHIP")
						human_test = false
					elsif plaintiff3.include?("REALTY/PGC")
						human_test = false
					elsif plaintiff3.include?("PHYSICIANS")
						human_test = false
					elsif plaintiff3.include?("ONCOLOGY")
						human_test = false
					elsif plaintiff3.include?("RADIATION")
						human_test = false
					elsif plaintiff3.include?("ROOFING")
						human_test = false
					elsif plaintiff3.include?("PRECISION")
						human_test = false
					elsif plaintiff3.include?("RECOVERY")
						human_test = false
					elsif plaintiff3.include?("ANALYTICS")
						human_test = false
					elsif plaintiff3.include?("CONVERGENCE")
						human_test = false
					elsif plaintiff3.include?("RECEIVABLES")
						human_test = false
					elsif plaintiff3.include?("LC")
						human_test = false
					elsif plaintiff3.include?("WEBBANK")
						human_test = false
					elsif plaintiff3.include?("ADVANCE")
						human_test = false
					elsif plaintiff3.include?("PAY")
						human_test = false
					elsif plaintiff3.include?("HEALTH")
						human_test = false
					elsif plaintiff3.include?("SYSTEM-BD")
						human_test = false
					elsif plaintiff3.include?("FAMILY")
						human_test = false
					elsif plaintiff3.include?("DENTAL")
						human_test = false
					elsif plaintiff3.include?("INVESTMENTS")
						human_test = false
					elsif plaintiff3.include?("FINANCE")
						human_test = false
					elsif plaintiff3.include?("CASHSMART")
						human_test = false
					elsif plaintiff3.include?("PROFESSIONAL")
						human_test = false
					elsif plaintiff3.include?("SERVICE")
						human_test = false
					elsif plaintiff3.include?("APTS")
						human_test = false
					elsif plaintiff3.include?("COUNTY")
						human_test = false
					elsif plaintiff3.include?("NATIONAL")
						human_test = false
					elsif plaintiff3.include?("FCU")
						human_test = false
					elsif plaintiff3.include?("EQUITABLE")
						human_test = false
					elsif plaintiff3.include?("ENTERPRISE")
						human_test = false
					elsif plaintiff3.include?("LTC")
						human_test = false
					elsif plaintiff3.include?("AFS")
						human_test = false
					elsif plaintiff3.include?("A F S")
						human_test = false
					elsif plaintiff3.include?("INOVISION")
						human_test = false
					elsif plaintiff3.include?("AGMC")
						human_test = false
					elsif plaintiff3.include?("SPV")
						human_test = false
					elsif plaintiff3.include?("PRODUCE")
						human_test = false
					elsif plaintiff3.include?("REHABILITATION")
						human_test = false
					elsif plaintiff3.include?("CORPORATION")
						human_test = false
					elsif plaintiff3.include?("HEALTHCARE")
						human_test = false
					elsif plaintiff3.include?("CACH")
						human_test = false
					elsif plaintiff3.include?("PORTFOLIO")
						human_test = false
					elsif plaintiff3.include?("MANOR")
						human_test = false
					elsif plaintiff3.include?("MANANGEMENT")
						human_test = false
					elsif plaintiff3.include?("XP-7")
						human_test = false
					elsif plaintiff3.include?("HOMES")
						human_test = false
					elsif plaintiff3.include?("DEVELOPMENT")
						human_test = false
					elsif plaintiff3.include?("COMPANIES")
						human_test = false
					elsif plaintiff3.include?("ENTERPRISES")
						human_test = false
					elsif plaintiff3.include?("INC.")
						human_test = false
					elsif plaintiff3.include?("CITIFINANCIAL")
						human_test = false
					elsif plaintiff3.include?("VILLAGE")
						human_test = false
					elsif plaintiff3.include?("INS")
						human_test = false
					elsif plaintiff3.include?("DBS")
						human_test = false
					elsif plaintiff3.include?("ACQUISITION")
						human_test = false
					elsif plaintiff3.include?("LS")
						human_test = false
					elsif plaintiff3.include?("COMMUNITIES")
						human_test = false
					elsif plaintiff3.include?("TOP")
						human_test = false
					elsif plaintiff3.include?("CHIROPRACTIC")
						human_test = false
					elsif plaintiff3.include?("VERIZON")
						human_test = false
					elsif plaintiff3.include?("WIRELESS")
						human_test = false
					elsif plaintiff3.include?("BELKA")
						human_test = false
					elsif plaintiff3.include?("NEIGHBORCARE")
						human_test = false
					elsif plaintiff3.include?("HOMESTEAD")
						human_test = false
					elsif plaintiff3.include?("INTERIOR")
						human_test = false
					elsif plaintiff3.include?("DESIGN")
						human_test = false
					elsif plaintiff3.include?("JOURNAL")
						human_test = false
					elsif plaintiff3.include?("PUBLISHING")
						human_test = false
					elsif plaintiff3.include?("INTERNATIONAL")
						human_test = false
					elsif plaintiff3.include?("(LLC)")
						human_test = false
					elsif plaintiff3.include?("BENEFICIAL")
						human_test = false
					elsif plaintiff3.include?("COUNTRY")
						human_test = false
					elsif plaintiff3.include?("FOR")
						human_test = false
					elsif plaintiff3.include?("VETERANS")
						human_test = false
					elsif plaintiff3.include?("SYSCO")
						human_test = false
					elsif plaintiff3.include?("PEDIATRIC")
						human_test = false
					elsif plaintiff3.include?("AKRON")
						human_test = false
					elsif plaintiff3.include?("OPHTHALMOLOGY")
						human_test = false
					elsif plaintiff3.include?("DEPARTMENT")
						human_test = false
					elsif plaintiff3.include?("FIRE")
						human_test = false
					elsif plaintiff3.include?("RETAIL")
						human_test = false
					elsif plaintiff3.include?("SOLUTIONS")
						human_test = false
					elsif plaintiff3.include?("CASHIERS")
						human_test = false
					elsif plaintiff3.include?("CHECK")
						human_test = false
					elsif plaintiff3.include?("SALES")
						human_test = false
					elsif plaintiff3.include?("STORES")
						human_test = false
					elsif plaintiff3.include?("GENERAL")
						human_test = false
					elsif plaintiff3.include?("IONICS")
						human_test = false
					elsif plaintiff3.include?("PHARMACY")
						human_test = false
					elsif plaintiff3.include?("BENEFICIAL")
						human_test = false
					elsif plaintiff3.include?("RUBBER")
						human_test = false
					elsif plaintiff3.include?("LINEN")
						human_test = false
					elsif plaintiff3.include?("SUPPLY")
						human_test = false
					elsif plaintiff3.include?("CLEANER")
						human_test = false
					elsif plaintiff3.include?("CLEANERS")
						human_test = false
					elsif plaintiff3.include?("PETROLEUM")
						human_test = false
					elsif plaintiff3.include?("GREAT")
						human_test = false
					elsif plaintiff3.include?("EQUITY")
						human_test = false
					elsif plaintiff3.include?("REMODELERS")
						human_test = false
					elsif plaintiff3.include?("REMODELING")
						human_test = false
					elsif plaintiff3.include?("FLIGHT")
						human_test = false
					elsif plaintiff3.include?("COMMUNICATIONS")
						human_test = false
					elsif plaintiff3.include?("CAPITAL")
						human_test = false
					elsif plaintiff3.include?("TOOLS")
						human_test = false
					elsif plaintiff3.include?("CONTRACTORS")
						human_test = false
					elsif plaintiff3.include?("REGISTER")
						human_test = false
					elsif plaintiff3.include?("FOODSERVICES")
						human_test = false
					elsif plaintiff3.include?("KAISER")
						human_test = false
					elsif plaintiff3.include?("PERMENENTE")
						human_test = false
					elsif plaintiff3.include?("STUDIOS")
						human_test = false
					elsif plaintiff3.include?("SUPERIOR")
						human_test = false
					elsif plaintiff3.include?("PORTABLES")
						human_test = false
					elsif plaintiff3.include?("FEDERAL")
						human_test = false
					elsif plaintiff3.include?("CU")
						human_test = false
					elsif plaintiff3.include?("CENTURY")
						human_test = false
					elsif plaintiff3.include?("UNITED")
						human_test = false
					elsif plaintiff3.include?("ADVERTISING")
						human_test = false
					elsif plaintiff3.include?("MEDIA")
						human_test = false
					elsif plaintiff3.include?("METHODIST")
						human_test = false
					elsif plaintiff3.include?("PRESCHOOL")
						human_test = false
					elsif plaintiff3.include?("GEN")
						human_test = false
					elsif plaintiff3.include?("HOSP")
						human_test = false
					elsif plaintiff3.include?("CLINIC")
						human_test = false
					elsif plaintiff3.include?("VETERINARY")
						human_test = false
					elsif plaintiff3.include?("ORTHOPAEDICS")
						human_test = false
					elsif plaintiff3.include?("PATRIOT")
						human_test = false
					elsif plaintiff3.include?("STEEL")
						human_test = false
					elsif plaintiff3.include?("PLUMBING")
						human_test = false
					elsif plaintiff3.include?("PHONE")
						human_test = false
					elsif plaintiff3.include?("USER")
						human_test = false
					elsif plaintiff3.include?("TRANSMISSIONS")
						human_test = false
					elsif plaintiff3.include?("CENTURY")
						human_test = false
					elsif plaintiff3.include?("AGENCY")
						human_test = false
					elsif plaintiff3.include?("TO")
						human_test = false
					elsif plaintiff3.include?("WORK")
						human_test = false
					# elsif plaintiff3.include?("CHURCH")
						# human_test = false
					elsif plaintiff3.include?("MOTORS")
						human_test = false
					elsif plaintiff3.include?("CITIZEN")
						human_test = false
					elsif plaintiff3.include?("AT")
						human_test = false
					elsif plaintiff3.include?("PORTAGE")
						human_test = false
					elsif plaintiff3.include?("BUILDING")
						human_test = false
					elsif plaintiff3.include?("PRODUCTS")
						human_test = false
					elsif plaintiff3.include?("CHEVROLET")
						human_test = false
					elsif plaintiff3.include?("INDUSTRIES")
						human_test = false
					elsif plaintiff3.include?("COMMERCIAL")
						human_test = false
					elsif plaintiff3.include?("TOWNSHIP")
						human_test = false
					elsif plaintiff3.include?("TRUSTEES")
						human_test = false
					elsif plaintiff3.include?("BANK,")
						human_test = false
					elsif plaintiff3.include?("RENTAL")
						human_test = false
					elsif plaintiff3.include?("CHEMICAL")
						human_test = false
					elsif plaintiff3.include?("TECHNOLOGY")
						human_test = false
					elsif plaintiff3.include?("LEATHERCARE")
						human_test = false
					elsif plaintiff3.include?("DISCOUNT")
						human_test = false
					elsif plaintiff3.include?("DRAINAGE")
						human_test = false
					elsif plaintiff3.include?("ASSETS")
						human_test = false
					elsif plaintiff3.include?("PRINTING")
						human_test = false
					elsif plaintiff3.include?("CONCEPTS")
						human_test = false
					elsif plaintiff3.include?("INFUSION")
						human_test = false
					elsif plaintiff3.include?("BY")
						human_test = false
					elsif plaintiff3.include?("BAPTIST")
						human_test = false
					elsif plaintiff3.include?("ASPHALT")
						human_test = false
					elsif plaintiff3.include?("LLP")
						human_test = false
					elsif plaintiff3.include?("FIRSTMERIT")
						human_test = false
					elsif plaintiff3.include?("ELECTRIC")
						human_test = false
					elsif plaintiff3.include?("LP")
						human_test = false
					elsif plaintiff3.include?("ACQUISITON")
						human_test = false
					elsif plaintiff3.include?("AUTHORITY")
						human_test = false
					elsif plaintiff3.include?("METROPOLITAN")
						human_test = false
					elsif plaintiff3.include?("HOUSING")
						human_test = false
					elsif plaintiff3.include?("EVANGELICAL")
						human_test = false
					elsif plaintiff3.include?("LUTHERAN")
						human_test = false
					elsif plaintiff3.include?("DELIVERY")
						human_test = false
					elsif plaintiff3.include?("FLORISTS")
						human_test = false
					elsif plaintiff3.include?("BUSINESS")
						human_test = false
					elsif plaintiff3.include?("MAGAZINES")
						human_test = false
					elsif plaintiff3.include?("SPORTS")
						human_test = false
					elsif plaintiff3.include?("APPAREL")
						human_test = false
					elsif plaintiff3.include?("FED")
						human_test = false
					elsif plaintiff3.include?("STEELWORKERS")
						human_test = false
					elsif plaintiff3.include?("UNIVERSAL")
						human_test = false
					elsif plaintiff3.include?("PURCHASE")
						human_test = false
					elsif plaintiff3.include?("PRODUCTS")
						human_test = false
					elsif plaintiff3.include?("CHOCOLATES")
						human_test = false
					elsif plaintiff3.include?("PROJECTS")
						human_test = false
					elsif plaintiff3.include?("LIMITED")
						human_test = false
					elsif plaintiff3.include?("PTNP")
						human_test = false
					elsif plaintiff3.include?("VENTURES")
						human_test = false
					elsif plaintiff3.include?("FNANCIAL")
						human_test = false
					elsif plaintiff3.include?("DAIMLERCHRYSLER")
						human_test = false
					elsif plaintiff3.include?("CONSTRUCTION")
						human_test = false
					elsif plaintiff3.include?("PERFORMANCE")
						human_test = false
					elsif plaintiff3.include?("MGT")
						human_test = false
					elsif plaintiff3.include?("PHASE")
						human_test = false
					elsif plaintiff3.include?("SPECIALTIES")
						human_test = false
					elsif plaintiff3.include?("ARTIFICIAL")
						human_test = false
					elsif plaintiff3.include?("LAB")
						human_test = false
					elsif plaintiff3.include?("SPECIALISTS")
						human_test = false
					elsif plaintiff3.include?("WORLDWIDE")
						human_test = false
					elsif plaintiff3.include?("PURCHASING")
						human_test = false
					elsif plaintiff3.include?("006")
						human_test = false
					elsif plaintiff3.include?("TROOP")
						human_test = false
					elsif plaintiff3.include?("ORTHODONTIC")
						human_test = false
					elsif plaintiff3.include?("ARTS")
						human_test = false
					elsif plaintiff3.include?("SURGICAL")
						human_test = false
					else
						human_test = true
					end
	if human_test == true
		return true
	elsif human_test == false
		return false
	end
end

Watir.default_timeout = 300

# proxy 206.214.82.36
year = 2010
case_num = 22556
case_codes = ["CVF", "CVI", "CVG", "CVE", "CVH"]
looper = true
end_of_line = false
good_case = true
check_text = nil

judgement_float = 0

cvf_counter = 0

cvh_counter = 0

cvg_counter = 0

cvi_counter = 0

cve_counter = 0

	CSV.open("columbus_data_file4.csv", 'w+') do |csv|
		puts "file created"
	end

browser = Watir::Browser.new

browser.goto 'https://chrome.google.com/webstore/detail/proxy-switchyomega/padekgcemlokbadohgkifijomclgjgif?hl=en'

puts "Please set up the proxy and type anything to continue"
gets.chomp

	while 1 != 2

		code_num = 0

		browser.goto 'http://www.fcmcclerk.com/case/search'

		browser.text_field(:id, 'case_number').set("#{year} #{case_codes[code_num]} #{case_num}")

		browser.select_list(:id, 'party_code').select "PLAINTIFF"

		browser.button(:id, 'search_button_2').click

		if browser.button(:value, "View").exists? && (human_tester(browser.td(:class => "sorting_3").text.split(" ")))
			puts browser.td(:class => "sorting_3").text
			puts "Human test passed"
		elsif browser.button(:value, "View").exists? && (human_tester(browser.td(:class => "sorting_3").text.split(" ")) == false)
			puts browser.td(:class => "sorting_3").text
			puts "Human test failed"
			sleep 2
		end

		if ((year == 2003) && (case_codes[code_num] == "CVG") && (case_num == 1162))
			
			puts "Lynn Mann's stupid case detected"
		
		elsif browser.button(:value => "View", :index => 2).exists?
			
			puts "MULTIPLE PLAINTIFFS DETECTED"

		elsif browser.button(:value, "View").exists? && (human_tester(browser.td(:class => "sorting_3").text.split(" ")))

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
			judgement_float = 0
			good_case = true
			payments = 0
			placeholder_string = nil
			check_text = nil
			defendant_array = []

			browser.windows.last.use do

				if browser.table(:id => "pty_table").text.include?("3RD PARTY PLAINTIFF")
					good_case = false
				end 

				date = browser.td(:class => "page_header", :index => 1).text
				plaintiff = browser.table(:id => "pty_table").td(:class => "data", :index => 1).text
				plaintiff1 = browser.table(:id => "pty_table").td(:class => "data", :index => 3).text
				plaintiff2 = browser.table(:id => "pty_table").td(:class => "data", :index => 4).text
				plaintiff3 = browser.table(:id => "pty_table").td(:class => "data", :index => 5).text

				if browser.table(:id => "pty_table").td(:class => "data", :index => 7).exists?
					defendant1 = browser.table(:id => "pty_table").td(:class => "data", :index => 7).text
					if browser.table(:id => "pty_table").td(:class => "data", :index => 9).exists?
						defendant1 = defendant1 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 9).text
					end
					if browser.table(:id => "pty_table").td(:class => "data", :index => 10).exists?
						defendant1 = defendant1 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 10).text
					end
					if browser.table(:id => "pty_table").td(:class => "data", :index => 11).exists?
						defendant1 = defendant1 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 11).text
					end
				end

				if browser.table(:id => "pty_table").td(:class => "data", :index => 13).exists?

					defendant2 = browser.table(:id => "pty_table").td(:class => "data", :index => 13).text
					if browser.table(:id => "pty_table").td(:class => "data", :index => 15).exists?
						defendant2 = defendant2 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 15).text
					end
					if browser.table(:id => "pty_table").td(:class => "data", :index => 16).exists?
						defendant2 = defendant2 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 16).text
					end
					if browser.table(:id => "pty_table").td(:class => "data", :index => 17).exists?
						defendant2 = defendant2 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 17).text
					end
				end

				if browser.table(:id => "pty_table").td(:class => "data", :index => 19).exists?
					defendant3 = browser.table(:id => "pty_table").td(:class => "data", :index => 19).text
					if browser.table(:id => "pty_table").td(:class => "data", :index => 21).exists?
						defendant3 = defendant3 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 21).text
					end
					if browser.table(:id => "pty_table").td(:class => "data", :index => 22).exists?
						defendant3 = defendant3 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 22).text
					end
					if browser.table(:id => "pty_table").td(:class => "data", :index => 23).exists?
						defendant3 = defendant3 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 23).text
					end
				end

				if browser.table(:id => "pty_table").td(:class => "data", :index => 25).exists?
					defendant4 = browser.table(:id => "pty_table").td(:class => "data", :index => 25).text
					if browser.table(:id => "pty_table").td(:class => "data", :index => 27).exists?
						defendant4 = defendant4 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 27).text
					end
					if browser.table(:id => "pty_table").td(:class => "data", :index => 28).exists?
						defendant4 = defendant4 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 28).text
					end
					if browser.table(:id => "pty_table").td(:class => "data", :index => 29).exists?
						defendant4 = defendant4 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 29).text
					end
				end

				if browser.table(:id => "pty_table").td(:class => "data", :index => 31).exists?
					defendant5 = browser.table(:id => "pty_table").td(:class => "data", :index => 31).text
					if browser.table(:id => "pty_table").td(:class => "data", :index => 33).exists?
						defendant5 = defendant5 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 33).text
					end
					if browser.table(:id => "pty_table").td(:class => "data", :index => 34).exists?
						defendant5 = defendant5 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 34).text
					end
					if browser.table(:id => "pty_table").td(:class => "data", :index => 35).exists?
						defendant5 = defendant5 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 35).text
					end
				end

				if browser.table(:id => "dkt_table").text.include?("SATISFACTION OF JUDGMENT FILED")
					puts "Judgement Satisfied"
					good_case = false
				end

				if browser.table(:id => "dkt_table").text.include?("NOTIFICATION OF BANKRUPTCY")
					puts "Bankruptcy Declared"
					good_case = false
				end

				if browser.table(:id => "dkt_table").text.include?("NOTICE OF DISMISSAL") && (browser.table(:id => "dkt_table").text.include?("CASE REOPENED") == false)
					puts "Case Dismissed"
					good_case = false
				end

				if browser.table(:id => "dkt_table").text.include?("CASE DISMISSED W/O PREJ") && (browser.table(:id => "dkt_table").text.include?("CASE REOPENED") == false)
					puts "Case Dismissed"
					good_case = false
				end

				if browser.table(:id => "dkt_table").text.include?("%")
					puts "% FOUND"

					browser.table(:id => "dkt_table").tds(:class => "data").each do |td|
						if td.strong.exists? && td.strong.text.include?("%")
							placeholder = td.parent.next_sibling
							if placeholder.text.include?("$")
								judgement_amount = placeholder.text
								judgement_amount = judgement_amount.split("$")
								judgement_amount = judgement_amount[1].split(" ")
								judgement_float = judgement_amount[0].to_f
								judgement_amount = "$" + judgement_amount[0]
							elsif placeholder.text.include?("Judgment Amount:")
								judgement_amount = placeholder.text
								judgement_amount = judgement_amount.split(":")
								judgement_amount = judgement_amount[1].to_s
								judgement_amount = judgement_amount.split(" ")
								judgement_float = judgement_amount[0].to_f
								judgement_amount = "$" + judgement_amount[0]
							end
							break
						elsif td.text.include?("%") && (td.text.include?("PLAINTIFF ENTITLED TO COLLECT ON JUDGMENT") == false)
							if td.text.include?("$")
								judgement_amount = td.text
								judgement_amount = judgement_amount.split("$")
								judgement_amount = judgement_amount[1].split(" ")
								judgement_float = judgement_amount[0].to_f
								judgement_amount = "$" + judgement_amount[0]
							elsif td.text.include?("Judgment Amount:")
								judgement_amount = td.text
								judgement_amount = judgement_amount.split(":")
								judgement_amount = judgement_amount[1].to_s
								judgement_amount = judgement_amount.split(" ")
								judgement_amount = judgement_amount[0].to_s
								# judgement_amount = judgement_amount.split(",")
								if judgement_amount.include?(",")
									judgement_amount = judgement_amount.split(",")
									judgement_amount = judgement_amount[0] + judgement_amount[1]
								end
								judgement_float = judgement_amount.to_f
								judgement_amount = "$" + judgement_amount[0]
							end
							break
						end
					end
					# judgement_amount = browser.table(:id => "dkt_table").text.split("%")
				else
					puts "NO MONETARY JUDGEMENT FOUND"
					good_case = false
				end

				if browser.table(:id => "check_table").exists?
					check_text = browser.table(:id => "check_table").text
					check_text = check_text.split(" ")
					check_text.each do |text|
						if text.include?("$")
							placeholder_string = text
							placeholder_string = placeholder_string.delete!("$")
							placeholder_string = placeholder_string.to_f
							payments += placeholder_string
						end
					end
					payments = payments.round(2)					
				end

				if (judgement_float - payments) <= 0
					good_case = false
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
			case_data.push("#{year} #{case_codes[code_num]} #{case_num}")
			case_data.push(plaintiff_data)
			case_data.push(judgement_float - payments)

			if (judgement_float - payments) < 400
				good_case = false
			end

			defendant_array = []
			defendant_array.push(defendant1)

			if defendant2 != 0
				defendant_array.push(defendant2)
			end

			if defendant3 != 0
				defendant_array.push(defendant3)
			end

			if defendant4 != 0
				defendant_array.push(defendant4)
			end 

			if defendant5 != 0
				defendant_array.push(defendant5)
			end

			if good_case == true
				defendant_array.each do |debtor|
					case_data[4] = debtor
					CSV.open("columbus_data_file4.csv", "a") do |csv|
						csv.puts case_data
						puts "Data Saved"
					end
				end
			end

			sleep 2

			puts case_data

			browser.windows.last.close

		elsif (browser.button(:value, "View").exists? == false)

			sleep 3

			code_num += 1

			browser.text_field(:id, 'case_number').set("#{year} #{case_codes[code_num]} #{case_num}")

			browser.select_list(:id, 'party_code').select "PLAINTIFF"

			browser.scroll.to :bottom

			browser.button(:id, 'search_button_2').click

			if browser.button(:value, "View").exists? && (human_tester(browser.td(:class => "sorting_3").text.split(" ")))
				puts browser.td(:class => "sorting_3").text
				puts "Human test passed"
			elsif browser.button(:value, "View").exists? && (human_tester(browser.td(:class => "sorting_3").text.split(" ")) == false)
				puts browser.td(:class => "sorting_3").text
				puts "Human test failed"
				sleep 2
			end


		if browser.button(:value => "View", :index => 2).exists?
			
			puts "MULTIPLE PLAINTIFFS DETECTED"

		elsif browser.button(:value, "View").exists? && (human_tester(browser.td(:class => "sorting_3").text.split(" ")))

				case_data = []

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
			judgement_float = 0
			payments = 0
			placeholder_string = nil
			check_text = nil

			browser.windows.last.use do 

				if browser.table(:id => "pty_table").text.include?("3RD PARTY PLAINTIFF")
					good_case = false
				end 
				
				date = browser.td(:class => "page_header", :index => 1).text
				plaintiff = browser.table(:id => "pty_table").td(:class => "data", :index => 1).text
				plaintiff1 = browser.table(:id => "pty_table").td(:class => "data", :index => 3).text
				plaintiff2 = browser.table(:id => "pty_table").td(:class => "data", :index => 4).text
				plaintiff3 = browser.table(:id => "pty_table").td(:class => "data", :index => 5).text

				if browser.table(:id => "pty_table").td(:class => "data", :index => 7).exists?
					defendant1 = browser.table(:id => "pty_table").td(:class => "data", :index => 7).text
					if browser.table(:id => "pty_table").td(:class => "data", :index => 9).exists?
						defendant1 = defendant1 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 9).text
					end
					if browser.table(:id => "pty_table").td(:class => "data", :index => 10).exists?
						defendant1 = defendant1 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 10).text
					end
					if browser.table(:id => "pty_table").td(:class => "data", :index => 11).exists?
						defendant1 = defendant1 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 11).text
					end
				end

				if browser.table(:id => "pty_table").td(:class => "data", :index => 13).exists?

					defendant2 = browser.table(:id => "pty_table").td(:class => "data", :index => 13).text
					if browser.table(:id => "pty_table").td(:class => "data", :index => 15).exists?
						defendant2 = defendant2 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 15).text
					end
					if browser.table(:id => "pty_table").td(:class => "data", :index => 16).exists?
						defendant2 = defendant2 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 16).text
					end
					if browser.table(:id => "pty_table").td(:class => "data", :index => 17).exists?
						defendant2 = defendant2 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 17).text
					end
				end

				if browser.table(:id => "pty_table").td(:class => "data", :index => 19).exists?
					defendant3 = browser.table(:id => "pty_table").td(:class => "data", :index => 19).text
					if browser.table(:id => "pty_table").td(:class => "data", :index => 21).exists?
						defendant3 = defendant3 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 21).text
					end
					if browser.table(:id => "pty_table").td(:class => "data", :index => 22).exists?
						defendant3 = defendant3 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 22).text
					end
					if browser.table(:id => "pty_table").td(:class => "data", :index => 23).exists?
						defendant3 = defendant3 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 23).text
					end
				end

				if browser.table(:id => "pty_table").td(:class => "data", :index => 25).exists?
					defendant4 = browser.table(:id => "pty_table").td(:class => "data", :index => 25).text
					if browser.table(:id => "pty_table").td(:class => "data", :index => 27).exists?
						defendant4 = defendant4 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 27).text
					end
					if browser.table(:id => "pty_table").td(:class => "data", :index => 28).exists?
						defendant4 = defendant4 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 28).text
					end
					if browser.table(:id => "pty_table").td(:class => "data", :index => 29).exists?
						defendant4 = defendant4 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 29).text
					end
				end

				if browser.table(:id => "pty_table").td(:class => "data", :index => 31).exists?
					defendant5 = browser.table(:id => "pty_table").td(:class => "data", :index => 31).text
					if browser.table(:id => "pty_table").td(:class => "data", :index => 33).exists?
						defendant5 = defendant5 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 33).text
					end
					if browser.table(:id => "pty_table").td(:class => "data", :index => 34).exists?
						defendant5 = defendant5 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 34).text
					end
					if browser.table(:id => "pty_table").td(:class => "data", :index => 35).exists?
						defendant5 = defendant5 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 35).text
					end
				end

				if browser.table(:id => "dkt_table").text.include?("SATISFACTION OF JUDGMENT FILED")
					puts "Judgement Satisfied"
					good_case = false
				end

				if browser.table(:id => "dkt_table").text.include?("NOTIFICATION OF BANKRUPTCY")
					puts "Bankruptcy Declared"
					good_case = false
				end

				if browser.table(:id => "dkt_table").text.include?("NOTICE OF DISMISSAL") && (browser.table(:id => "dkt_table").text.include?("CASE REOPENED") == false)
					puts "Case Dismissed"
					good_case = false
				end

				if browser.table(:id => "dkt_table").text.include?("CASE DISMISSED W/O PREJ") && (browser.table(:id => "dkt_table").text.include?("CASE REOPENED") == false)
					puts "Case Dismissed"
					good_case = false
				end

				if browser.table(:id => "dkt_table").text.include?("%")
					puts "% FOUND"

					browser.table(:id => "dkt_table").tds(:class => "data").each do |td|
						if td.strong.exists? && td.strong.text.include?("%")
							placeholder = td.parent.next_sibling
							if placeholder.text.include?("$")
								judgement_amount = placeholder.text
								judgement_amount = judgement_amount.split("$")
								judgement_amount = judgement_amount[1].split(" ")
								judgement_float = judgement_amount[0].to_f								
								judgement_amount = "$" + judgement_amount[0]
							elsif placeholder.text.include?("Judgment Amount:")
								judgement_amount = placeholder.text
								judgement_amount = judgement_amount.split(":")
								judgement_amount = judgement_amount[1].to_s
								judgement_amount = judgement_amount.split(" ")
								judgement_float = judgement_amount[0].to_f
								judgement_amount = "$" + judgement_amount[0]
							end
							break
						elsif td.text.include?("%") && (td.text.include?("PLAINTIFF ENTITLED TO COLLECT ON JUDGMENT") == false)
							if td.text.include?("$")
								judgement_amount = td.text
								judgement_amount = judgement_amount.split("$")
								judgement_amount = judgement_amount[1].split(" ")
								judgement_float = judgement_amount[0].to_f
								judgement_amount = "$" + judgement_amount[0]
							elsif td.text.include?("Judgment Amount:")
								judgement_amount = td.text
								judgement_amount = judgement_amount.split(":")
								judgement_amount = judgement_amount[1].to_s
								judgement_amount = judgement_amount.split(" ")
								judgement_amount = judgement_amount[0].to_s
								# judgement_amount = judgement_amount.split(",")
								if judgement_amount.include?(",")
									judgement_amount = judgement_amount.split(",")
									judgement_amount = judgement_amount[0] + judgement_amount[1]
								end
								judgement_float = judgement_amount.to_f
								judgement_amount = "$" + judgement_amount[0]
							end
							break
						end
					end
					# judgement_amount = browser.table(:id => "dkt_table").text.split("%")
				else
					puts "NO MONETARY JUDGEMENT FOUND"
					good_case = false
				end

				if browser.table(:id => "check_table").exists?
					check_text = browser.table(:id => "check_table").text
					check_text = check_text.split(" ")
					check_text.each do |text|
						if text.include?("$")
							placeholder_string = text
							placeholder_string = placeholder_string.delete!("$")
							placeholder_string = placeholder_string.to_f
							payments += placeholder_string
						end
					end
					payments = payments.round(2)					
				end

				if (judgement_float - payments) <= 0
					good_case = false
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
			case_data.push("#{year} #{case_codes[code_num]} #{case_num}")
			case_data.push(plaintiff_data)
			case_data.push(judgement_float - payments)
			defendant_array = []
			defendant_array.push(defendant1)

			if (judgement_float - payments) < 400
				good_case = false
			end

			if defendant2 != 0
				defendant_array.push(defendant2)
			end

			if defendant3 != 0
				defendant_array.push(defendant3)
			end

			if defendant4 != 0
				defendant_array.push(defendant4)
			end 

			if defendant5 != 0
				defendant_array.push(defendant5)
			end

			if good_case == true
				defendant_array.each do |debtor|
					case_data[4] = debtor
					CSV.open("columbus_data_file4.csv", "a") do |csv|
						csv.puts case_data
						puts "Data Saved"
					end
				end
			end

			puts case_data

				sleep 2

				browser.windows.last.close

			elsif (browser.button(:value, 'View').exists? == false)
				
				sleep 3

				code_num += 1

				browser.text_field(:id, 'case_number').set("#{year} #{case_codes[code_num]} #{case_num}")

				browser.select_list(:id, 'party_code').select "PLAINTIFF"

				browser.scroll.to :bottom

				browser.button(:id, 'search_button_2').click

				if browser.button(:value, "View").exists? && (human_tester(browser.td(:class => "sorting_3").text.split(" ")))
					puts browser.td(:class => "sorting_3").text
					puts "Human test passed"
				elsif browser.button(:value, "View").exists? && (human_tester(browser.td(:class => "sorting_3").text.split(" ")) == false)
					puts browser.td(:class => "sorting_3").text
					puts "Human test failed"
					sleep 2
				end


				if browser.button(:value => "View", :index => 2).exists?
			
					puts "MULTIPLE PLAINTIFFS DETECTED"

				elsif browser.button(:value, "View").exists? && (human_tester(browser.td(:class => "sorting_3").text.split(" ")))

					case_data = []

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
			judgement_float = 0
			payments = 0
			placeholder_string = nil
			check_text = nil

			browser.windows.last.use do 

				if browser.table(:id => "pty_table").text.include?("3RD PARTY PLAINTIFF")
					good_case = false
				end 
				
				date = browser.td(:class => "page_header", :index => 1).text
				plaintiff = browser.table(:id => "pty_table").td(:class => "data", :index => 1).text
				plaintiff1 = browser.table(:id => "pty_table").td(:class => "data", :index => 3).text
				plaintiff2 = browser.table(:id => "pty_table").td(:class => "data", :index => 4).text
				plaintiff3 = browser.table(:id => "pty_table").td(:class => "data", :index => 5).text

				if browser.table(:id => "pty_table").td(:class => "data", :index => 7).exists?
					defendant1 = browser.table(:id => "pty_table").td(:class => "data", :index => 7).text
					if browser.table(:id => "pty_table").td(:class => "data", :index => 9).exists?
						defendant1 = defendant1 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 9).text
					end
					if browser.table(:id => "pty_table").td(:class => "data", :index => 10).exists?
						defendant1 = defendant1 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 10).text
					end
					if browser.table(:id => "pty_table").td(:class => "data", :index => 11).exists?
						defendant1 = defendant1 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 11).text
					end
				end

				if browser.table(:id => "pty_table").td(:class => "data", :index => 13).exists?

					defendant2 = browser.table(:id => "pty_table").td(:class => "data", :index => 13).text
					if browser.table(:id => "pty_table").td(:class => "data", :index => 15).exists?
						defendant2 = defendant2 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 15).text
					end
					if browser.table(:id => "pty_table").td(:class => "data", :index => 16).exists?
						defendant2 = defendant2 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 16).text
					end
					if browser.table(:id => "pty_table").td(:class => "data", :index => 17).exists?
						defendant2 = defendant2 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 17).text
					end
				end

				if browser.table(:id => "pty_table").td(:class => "data", :index => 19).exists?
					defendant3 = browser.table(:id => "pty_table").td(:class => "data", :index => 19).text
					if browser.table(:id => "pty_table").td(:class => "data", :index => 21).exists?
						defendant3 = defendant3 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 21).text
					end
					if browser.table(:id => "pty_table").td(:class => "data", :index => 22).exists?
						defendant3 = defendant3 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 22).text
					end
					if browser.table(:id => "pty_table").td(:class => "data", :index => 23).exists?
						defendant3 = defendant3 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 23).text
					end
				end

				if browser.table(:id => "pty_table").td(:class => "data", :index => 25).exists?
					defendant4 = browser.table(:id => "pty_table").td(:class => "data", :index => 25).text
					if browser.table(:id => "pty_table").td(:class => "data", :index => 27).exists?
						defendant4 = defendant4 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 27).text
					end
					if browser.table(:id => "pty_table").td(:class => "data", :index => 28).exists?
						defendant4 = defendant4 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 28).text
					end
					if browser.table(:id => "pty_table").td(:class => "data", :index => 29).exists?
						defendant4 = defendant4 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 29).text
					end
				end

				if browser.table(:id => "pty_table").td(:class => "data", :index => 31).exists?
					defendant5 = browser.table(:id => "pty_table").td(:class => "data", :index => 31).text
					if browser.table(:id => "pty_table").td(:class => "data", :index => 33).exists?
						defendant5 = defendant5 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 33).text
					end
					if browser.table(:id => "pty_table").td(:class => "data", :index => 34).exists?
						defendant5 = defendant5 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 34).text
					end
					if browser.table(:id => "pty_table").td(:class => "data", :index => 35).exists?
						defendant5 = defendant5 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 35).text
					end
				end

				if browser.table(:id => "dkt_table").text.include?("SATISFACTION OF JUDGMENT FILED")
					puts "Judgement Satisfied"
					good_case = false
				end

				if browser.table(:id => "dkt_table").text.include?("NOTIFICATION OF BANKRUPTCY")
					puts "Bankruptcy Declared"
					good_case = false
				end

				if browser.table(:id => "dkt_table").text.include?("NOTICE OF DISMISSAL") && (browser.table(:id => "dkt_table").text.include?("CASE REOPENED") == false)
					puts "Case Dismissed"
					good_case = false
				end

				if browser.table(:id => "dkt_table").text.include?("CASE DISMISSED W/O PREJ") && (browser.table(:id => "dkt_table").text.include?("CASE REOPENED") == false)
					puts "Case Dismissed"
					good_case = false
				end

				if browser.table(:id => "dkt_table").text.include?("%")
					puts "% FOUND"

					browser.table(:id => "dkt_table").tds(:class => "data").each do |td|
						if td.strong.exists? && td.strong.text.include?("%")
							placeholder = td.parent.next_sibling
							if placeholder.text.include?("$")
								judgement_amount = placeholder.text
								judgement_amount = judgement_amount.split("$")
								judgement_amount = judgement_amount[1].split(" ")
								judgement_float = judgement_amount[0].to_f
								judgement_amount = "$" + judgement_amount[0]
							elsif placeholder.text.include?("Judgment Amount:")
								judgement_amount = placeholder.text
								judgement_amount = judgement_amount.split(":")
								judgement_amount = judgement_amount[1].to_s
								judgement_amount = judgement_amount.split(" ")
								judgement_float = judgement_amount[0].to_f
								judgement_amount = "$" + judgement_amount[0]
							end
							break
						elsif td.text.include?("%") && (td.text.include?("PLAINTIFF ENTITLED TO COLLECT ON JUDGMENT") == false)
							if td.text.include?("$")
								judgement_amount = td.text
								judgement_amount = judgement_amount.split("$")
								judgement_amount = judgement_amount[1].split(" ")
								judgement_float = judgement_amount[0].to_f
								judgement_amount = "$" + judgement_amount[0]
							elsif td.text.include?("Judgment Amount:")
								judgement_amount = td.text
								judgement_amount = judgement_amount.split(":")
								judgement_amount = judgement_amount[1].to_s
								judgement_amount = judgement_amount.split(" ")
								judgement_amount = judgement_amount[0].to_s
								# judgement_amount = judgement_amount.split(",")
								if judgement_amount.include?(",")
									judgement_amount = judgement_amount.split(",")
									judgement_amount = judgement_amount[0] + judgement_amount[1]
								end
								judgement_float = judgement_amount.to_f
								judgement_amount = "$" + judgement_amount[0]
							end
							break
						end
					end
					# judgement_amount = browser.table(:id => "dkt_table").text.split("%")
				else
					puts "NO MONETARY JUDGEMENT FOUND"
					good_case = false
				end

				if browser.table(:id => "check_table").exists?
					check_text = browser.table(:id => "check_table").text
					check_text = check_text.split(" ")
					check_text.each do |text|
						if text.include?("$")
							placeholder_string = text
							placeholder_string = placeholder_string.delete!("$")
							placeholder_string = placeholder_string.to_f
							payments += placeholder_string
						end
					end
					payments = payments.round(2)					
				end

				if (judgement_float - payments) <= 0
					good_case = false
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
			case_data.push("#{year} #{case_codes[code_num]} #{case_num}")
			case_data.push(plaintiff_data)
			case_data.push(judgement_float - payments)
			defendant_array = []
			defendant_array.push(defendant1)

			if (judgement_float - payments) < 400
				good_case = false
			end

			if defendant2 != 0
				defendant_array.push(defendant2)
			end

			if defendant3 != 0
				defendant_array.push(defendant3)
			end

			if defendant4 != 0
				defendant_array.push(defendant4)
			end 

			if defendant5 != 0
				defendant_array.push(defendant5)
			end

			if good_case == true
				defendant_array.each do |debtor|
					case_data[4] = debtor
					CSV.open("columbus_data_file4.csv", "a") do |csv|
						csv.puts case_data
						puts "Data Saved"
					end
				end
			end

			puts case_data

					sleep 2

					browser.windows.last.close

				elsif (browser.button(:value, 'View').exists? == false)
				
					sleep 3

					code_num += 1

					browser.text_field(:id, 'case_number').set("#{year} #{case_codes[code_num]} #{case_num}")

					browser.select_list(:id, 'party_code').select "PLAINTIFF"

					browser.scroll.to :bottom

					browser.button(:id, 'search_button_2').click

					if browser.button(:value, "View").exists? && (human_tester(browser.td(:class => "sorting_3").text.split(" ")))
						puts browser.td(:class => "sorting_3").text
						puts "Human test passed"
					elsif browser.button(:value, "View").exists? && (human_tester(browser.td(:class => "sorting_3").text.split(" ")) == false)
						puts browser.td(:class => "sorting_3").text
						puts "Human test failed"
						sleep 2
					end


					if browser.button(:value => "View", :index => 2).exists?
			
						puts "MULTIPLE PLAINTIFFS DETECTED"

					elsif browser.button(:value, "View").exists? && (human_tester(browser.td(:class => "sorting_3").text.split(" ")))

						case_data = []

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
			judgement_float = 0
			payments = 0
			placeholder_string = nil
			check_text = nil

			browser.windows.last.use do 

				if browser.table(:id => "pty_table").text.include?("3RD PARTY PLAINTIFF")
					good_case = false
				end 
				
				date = browser.td(:class => "page_header", :index => 1).text
				plaintiff = browser.table(:id => "pty_table").td(:class => "data", :index => 1).text
				plaintiff1 = browser.table(:id => "pty_table").td(:class => "data", :index => 3).text
				plaintiff2 = browser.table(:id => "pty_table").td(:class => "data", :index => 4).text
				plaintiff3 = browser.table(:id => "pty_table").td(:class => "data", :index => 5).text

				if browser.table(:id => "pty_table").td(:class => "data", :index => 7).exists?
					defendant1 = browser.table(:id => "pty_table").td(:class => "data", :index => 7).text
					if browser.table(:id => "pty_table").td(:class => "data", :index => 9).exists?
						defendant1 = defendant1 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 9).text
					end
					if browser.table(:id => "pty_table").td(:class => "data", :index => 10).exists?
						defendant1 = defendant1 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 10).text
					end
					if browser.table(:id => "pty_table").td(:class => "data", :index => 11).exists?
						defendant1 = defendant1 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 11).text
					end
				end

				if browser.table(:id => "pty_table").td(:class => "data", :index => 13).exists?

					defendant2 = browser.table(:id => "pty_table").td(:class => "data", :index => 13).text
					if browser.table(:id => "pty_table").td(:class => "data", :index => 15).exists?
						defendant2 = defendant2 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 15).text
					end
					if browser.table(:id => "pty_table").td(:class => "data", :index => 16).exists?
						defendant2 = defendant2 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 16).text
					end
					if browser.table(:id => "pty_table").td(:class => "data", :index => 17).exists?
						defendant2 = defendant2 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 17).text
					end
				end

				if browser.table(:id => "pty_table").td(:class => "data", :index => 19).exists?
					defendant3 = browser.table(:id => "pty_table").td(:class => "data", :index => 19).text
					if browser.table(:id => "pty_table").td(:class => "data", :index => 21).exists?
						defendant3 = defendant3 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 21).text
					end
					if browser.table(:id => "pty_table").td(:class => "data", :index => 22).exists?
						defendant3 = defendant3 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 22).text
					end
					if browser.table(:id => "pty_table").td(:class => "data", :index => 23).exists?
						defendant3 = defendant3 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 23).text
					end
				end

				if browser.table(:id => "pty_table").td(:class => "data", :index => 25).exists?
					defendant4 = browser.table(:id => "pty_table").td(:class => "data", :index => 25).text
					if browser.table(:id => "pty_table").td(:class => "data", :index => 27).exists?
						defendant4 = defendant4 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 27).text
					end
					if browser.table(:id => "pty_table").td(:class => "data", :index => 28).exists?
						defendant4 = defendant4 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 28).text
					end
					if browser.table(:id => "pty_table").td(:class => "data", :index => 29).exists?
						defendant4 = defendant4 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 29).text
					end
				end

				if browser.table(:id => "pty_table").td(:class => "data", :index => 31).exists?
					defendant5 = browser.table(:id => "pty_table").td(:class => "data", :index => 31).text
					if browser.table(:id => "pty_table").td(:class => "data", :index => 33).exists?
						defendant5 = defendant5 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 33).text
					end
					if browser.table(:id => "pty_table").td(:class => "data", :index => 34).exists?
						defendant5 = defendant5 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 34).text
					end
					if browser.table(:id => "pty_table").td(:class => "data", :index => 35).exists?
						defendant5 = defendant5 + " " + browser.table(:id => "pty_table").td(:class => "data", :index => 35).text
					end
				end
				
				if browser.table(:id => "dkt_table").text.include?("SATISFACTION OF JUDGMENT FILED")
					puts "Judgement Satisfied"
					good_case = false
				end

				if browser.table(:id => "dkt_table").text.include?("NOTIFICATION OF BANKRUPTCY")
					puts "Bankruptcy Declared"
					good_case = false
				end

				if browser.table(:id => "dkt_table").text.include?("NOTICE OF DISMISSAL") && (browser.table(:id => "dkt_table").text.include?("CASE REOPENED") == false)
					puts "Case Dismissed"
					good_case = false
				end

				if browser.table(:id => "dkt_table").text.include?("CASE DISMISSED W/O PREJ") && (browser.table(:id => "dkt_table").text.include?("CASE REOPENED") == false)
					puts "Case Dismissed"
					good_case = false
				end

				if browser.table(:id => "dkt_table").text.include?("%")
					puts "% FOUND"

					browser.table(:id => "dkt_table").tds(:class => "data").each do |td|
						if td.strong.exists? && td.strong.text.include?("%")
							placeholder = td.parent.next_sibling
							if placeholder.text.include?("$")
								judgement_amount = placeholder.text
								judgement_amount = judgement_amount.split("$")
								judgement_amount = judgement_amount[1].split(" ")
								judgement_float = judgement_amount[0].to_f
								judgement_amount = "$" + judgement_amount[0]
							elsif placeholder.text.include?("Judgment Amount:")
								judgement_amount = placeholder.text
								judgement_amount = judgement_amount.split(":")
								judgement_amount = judgement_amount[1].to_s
								judgement_amount = judgement_amount.split(" ")
								judgement_float = judgement_amount[0].to_f
								judgement_amount = "$" + judgement_amount[0]
							end
							break
						elsif td.text.include?("%") && (td.text.include?("PLAINTIFF ENTITLED TO COLLECT ON JUDGMENT") == false)
							if td.text.include?("$")
								judgement_amount = td.text
								judgement_amount = judgement_amount.split("$")
								judgement_amount = judgement_amount[1].split(" ")
								judgement_float = judgement_amount[0].to_f
								judgement_amount = "$" + judgement_amount[0]
							elsif td.text.include?("Judgment Amount:")
								judgement_amount = td.text
								judgement_amount = judgement_amount.split(":")
								judgement_amount = judgement_amount[1].to_s
								judgement_amount = judgement_amount.split(" ")
								judgement_amount = judgement_amount[0].to_s
								# judgement_amount = judgement_amount.split(",")
								if judgement_amount.include?(",")
									judgement_amount = judgement_amount.split(",")
									judgement_amount = judgement_amount[0] + judgement_amount[1]
								end
								judgement_float = judgement_amount.to_f
								judgement_amount = "$" + judgement_amount[0]
							end
							break
						end
					end
					# judgement_amount = browser.table(:id => "dkt_table").text.split("%")
				else
					puts "NO MONETARY JUDGEMENT FOUND"
					good_case = false
				end

				if browser.table(:id => "check_table").exists?
					check_text = browser.table(:id => "check_table").text
					check_text = check_text.split(" ")
					check_text.each do |text|
						if text.include?("$")
							placeholder_string = text
							placeholder_string = placeholder_string.delete!("$")
							placeholder_string = placeholder_string.to_f
							payments += placeholder_string
						end
					end
					payments = payments.round(2)					
				end

				if (judgement_float - payments) <= 0
					good_case = false
				end
				
			end

			plaintiff_data = plaintiff + " #{plaintiff1}" + " #{plaintiff2}" + " #{plaintiff3}"

			if judgement_amount != 0
				judgement_amount = judgement_amount.split("$")
				judgement_amount = judgement_amount[1].split(" ")
				judgement_float = judgement_amount[0].to_f
				judgement_amount = "$" + judgement_amount[0]
			end

			date = date.split(" ")
			date = date.last
			case_data.push(date)
			case_data.push("#{year} #{case_codes[code_num]} #{case_num}")
			case_data.push(plaintiff_data)
			case_data.push(judgement_float - payments)
			defendant_array = []
			defendant_array.push(defendant1)

			if (judgement_float - payments) < 400
				good_case = false
			end

			if defendant2 != 0
				defendant_array.push(defendant2)
			end

			if defendant3 != 0
				defendant_array.push(defendant3)
			end

			if defendant4 != 0
				defendant_array.push(defendant4)
			end 

			if defendant5 != 0
				defendant_array.push(defendant5)
			end

			if good_case == true
				defendant_array.each do |debtor|
					case_data[4] = debtor
					CSV.open("columbus_data_file4.csv", "a") do |csv|
						csv.puts case_data
						puts "Data Saved"
					end
				end
			end

			puts case_data

						sleep 2

						browser.windows.last.close

					elsif (browser.button(:value, "View").exists? == false)

			# 			sleep 3

						code_num += 1

						browser.text_field(:id, 'case_number').set("#{year} #{case_codes[code_num]} #{case_num}")

						browser.select_list(:id, 'party_code').select "PLAINTIFF"

						browser.scroll.to :bottom

						browser.button(:id, 'search_button_2').click

						if browser.button(:value, "View").exists? == false

							end_of_line = true
							looper = false
						end
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

puts "#{year} search complete!"
puts "#{case_num}"
puts "#{cvf_counter} CVF cases found"
puts "#{cvh_counter} CVH cases found"
puts "#{cvg_counter} CVG cases found"
puts "#{cvi_counter} CVI cases found"
puts "#{cve_counter} CVE cases found"
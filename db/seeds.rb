# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts 'deleting all consultation'
Consultation.destroy_all

puts 'deleting all legislation'
Legislation.destroy_all

puts 'deleting all answers'
Answer.destroy_all

puts 'deleting all questions'
Question.destroy_all

puts 'deleting all clauses'
Clause.destroy_all

puts 'deleting all sections'
Section.destroy_all

puts 'deleting all users'
User.destroy_all

puts "creating user"
User.create!(email: "bobstevens@charitize.com", password: 123456)

puts "creating legislation"
Legislation.create!(title: 'Nigeria ICT Innovation and Entrepreneurship Vision', user_id: 1)

puts "creating consultation"
Consultation.create!(legislation_id: 1, user_id: 1)

puts "creating sections"
Section.create(title: 'Introduction', legislation_id: 1)
Section.create!(title: 'Digital Infrastructure', legislation_id: 1)
Section.create!(title: 'Education Reform, Skills Development and RandD', legislation_id: 1)
Section.create!(title: 'Supporting the Ecosystem for Innovative Entrepreneurship', legislation_id: 1)
Section.create!(title: 'Direct Support for Startups and Innovative Entrepreneurs', legislation_id: 1)


puts "creating clauses"

puts "creating introduction"

Clause.create!(content: "Technological change is accelerating and the global economy is
transforming in response. Automation and artificial intelligence are in the
process of making redundant the low-skilled jobs that many Nigerians have yet
to take. The majority of Nigerians are at serious risk of being left behind
unless there is an urgent technological revolution that can transform
agriculture, education, and all other spheres of public life. Technology has
the ability to unite all and remove barriers; therefore, to unlock Nigeria’s
potential in innovative entrepreneurship, NITDA declares the entire nation of
Nigeria the world’s largest Technology Park. This document provides the
unifying policy vision for ICT Innovation and Entrepreneurship.", section_id: 1)

  Question.create!(content: 'Is this exciting for your country?', clause_id: 1)
  Question.create!(content: 'Does this achieve ICT greatness for the country?', clause_id: 1)
  Question.create!(content: 'Would you like to provide a suggestion?', clause_id: 1)
  Question.create!(content: 'Please suggest your revision', clause_id: 1)



puts "creating section 1"

Clause.create!(content: 'Mandate infrastructure sharing to achieve the economies of scale necessary for universal affordable access. No longer an optional recommendation, Government will support private sector providers to merge their infrastructure.', section_id: 2)

  Question.create!(content: 'How well does this represents your views?', clause_id: 2)
  Question.create!(content: 'Does this achieve ICT greatness for the country?', clause_id: 2)
  Question.create!(content: 'Would you like to provide a suggestion?', clause_id: 2)
  Question.create!(content: 'Please suggest your revision', clause_id: 2)

  Metadata.create!(
    agency: 'Nigerian Communications Commission (NCC)',
    rationale: 'This would bring down the cost and ensure affordable access.'
    status: 'Status: NCC published guidelines on collocation and infrastructure sharing on Rights of Way, Masts, Poles, Antenna and tower-structures, Ducts, Trenches, Electric power. In the guidelines, each operator (licensee) is expected to publish standard price list, this is not regulated by NCC which could be exploited by the operators. NCC maintains a list of operators on its website, this includes the name of the company, address, start and expiry dates. This list may not be conclusive as there are operators that are not listed there but in previous published lists. The issue with the guidelines is that it is only for passive sharing, there is no guidelines on active sharing. However, NCC is working on a framework on active sharing but this is yet to be published. The Nigerian National Broadband Plan 2013 - 2018 is aimed at  “connecting communities with high speed internet and broadband access to facilitate faster socioeconomic advancement of the nation and its people”. To achieve this, the government, through NCC require Infrastructure Companies (Infracos) to bid for license to provide broadband infrastructure on an open access, non-discriminatory, price regulated basis to the six geopolitical zones and Lagos. Licenses have been awarded for Lagos, North Central, South East, North East. The license for North West, South South and South West have purportedly been awarded, The network and services infrastructure is divided into 3 layers; Passive Infrastructure Layer, Wholesale layer, Retail Service Providers (RSP). The main challenge telecommunication companies face is security, to this end, NCC and Nigerian Security and Civil Defence Corps (NSCDC) signed an MOU to protect the infrastructure. This would go along way in alleviating this challenge which would in turn increase access to affordable broadband. Furthermore, the government plans to lay 18,000KM of fibre in the country in its effort to achieve and surpass the 30% broadband penetration target of 2018.'
    )

Clause.create!(content: 'Drop Right of Way charges for fiber distribution, duties on telecommunication imports and the Information Technology tax to reduce capital requirements for expanding digital infrastructure, thereby reducing the costs passed on to consumers.', section_id: 2)
  Question.create!(content: 'How well does this represents your views?', clause_id: 3)
  Question.create!(content: 'Does this achieve ICT greatness for the country?', clause_id: 3)
  Question.create!(content: 'Would you like to provide a suggestion?', clause_id: 3)
  Question.create!(content: 'Please suggest your revision', clause_id: 3)

  Metadata.create!(
    agency: 'Federal Inland Revenue Services (FIRS), Federal Ministry of Power, Works and Housing, State Inland Revenue Board, Local Government Authority, Nigerian Communications Commission (NCC), Nigeria Customs Service (NCS), Federal Ministry of Finance (how about the respective state agencies)',
    rationale: 'Lack of harmonised RoW across federal, state and LGA and multiple taxation increases the cost of service delivery which is passed on to the consumers. Elimination of such charges, duties and tax would encourage investments and reduce the cost of service delivery.'
    status: "Currently, there is a guideline for the grant and access of right way to ICT services on federal roads by the Federal Ministry of Power, Works and Housing. The charges are N145 per linear meter for ducts and cables and N20 per linear metre annual maintenance fees subject to change every 5 years. States and Local Governments have different charges and this varies from state to state. The lack of uniform charges is one of the challenges telcos face which affects the supply of services. To address this challenge, NEC approved a policy on harmonization of right of way charges across LG, states and federal highways. The NEC RoW guideline still maintains the amount of N145 per meter for laying fibre for all parts of the country. Also, NCC made a case to the Governors Forum to ensure on the need to adhere to the NEC’s resolutions. Right of Way is included in the Nigerian Communications Commission’s Guidelines on Collocation and Infrastructure Sharing, this provides a means of bringing down the cost of broadband as shown in Vision 1.
The import duties on all telecommunications equipment is 10% with the exception of parts and accessories of instruments/apparatus, designed for telecommunications which is 5%. In the NITDA establishment Act, all telecommunications companies, GSM Service Providers, Cyber Companies and Internet Providers with annual turnover of 100M and above are liable to pay 1%  of the profit before tax."
    )

Clause.create!(content: 'Provide telecommunications companies with prioritised access to foreign exchange windows, such as the  Secondary Market Intervention Scheme (SMIS).', section_id: 2)
  Question.create!(content: 'How well does this represents your views?', clause_id: 4)
  Question.create!(content: 'Does this achieve ICT greatness for the country?', clause_id: 4)
  Question.create!(content: 'Would you like to provide a suggestion?', clause_id: 4)
  Question.create!(content: 'Please suggest your revision', clause_id: 4)

Clause.create!(content: 'Adopt a “dig once” policy, so that any traditional infrastructure investment--roads, electricity, water, etc--must be accompanied by fibre optic cables, where none already exist.', section_id: 2)
  Question.create!(content: 'How well does this represents your views?', clause_id: 5)
  Question.create!(content: 'Does this achieve ICT greatness for the country?', clause_id: 5)
  Question.create!(content: 'Would you like to provide a suggestion?', clause_id: 5)
  Question.create!(content: 'Please suggest your revision', clause_id: 5)

Clause.create!(content: 'Launch a single e-Governance portal using a Whole of Government approach to rationalize and simplify access to government services.', section_id: 2)
  Question.create!(content: 'How well does this represents your views?', clause_id: 6)
  Question.create!(content: 'Does this achieve ICT greatness for the country?', clause_id: 6)
  Question.create!(content: 'Would you like to provide a suggestion?', clause_id: 6)
  Question.create!(content: 'Please suggest your revision', clause_id: 6)


Clause.create!(content: 'Build a national data infrastructure to enable innovation:
a.  Ensure that an Open Data staff/unit responsible for opening up agency data and responding to Freedom of Information requests is operational within every MDA,
b.  Amend the Freedom of Information Act to strengthen enforcement and compliance,
c.  Build a single digital platform to electronically process FOI requests for every MDA,
d.  Build a single national data platform that aligns access to government datasets
e.  Launch a fund to procure API development from the indigenous technology community.', section_id: 2)

  Question.create!(content: 'How well does this represents your views?', clause_id: 7)
  Question.create!(content: 'Does this achieve ICT greatness for the country?', clause_id: 7)
  Question.create!(content: 'Would you like to provide a suggestion?', clause_id: 7)
  Question.create!(content: 'Please suggest your revision', clause_id: 7)

Clause.create!(content: 'Support renewable energy through expanded subsidies and tax exemptions for importation of renewable energy technology.', section_id: 2)
  Question.create!(content: 'How well does this represents your views?', clause_id: 8)
  Question.create!(content: 'Does this achieve ICT greatness for the country?', clause_id: 8)
  Question.create!(content: 'Would you like to provide a suggestion?', clause_id: 8)
  Question.create!(content: 'Please suggest your revision', clause_id: 8)


puts "creating section 2"

Clause.create!(content: 'Transform the National Youth Service Corps to become a national digital training army:
a.  Train corps members in digital literacy teaching pedagogy during camp,
b.  Equip every corps member with a tablet,
c.  Deploy all corps members in primary schools to support digital literacy education,
d.  Emphasize entrepreneurial values, such as critical thinking, experimentation, collaboration, accepting failure, and leadership skills, and
e.  Discourage redeployment of corp members, to ensure cultural exchange during camp, fostering trust and empathy across ethnic, linguistic, religious and gender divides to build a cohesive and proud national identity.',
section_id: 3)

  Question.create!(content: 'How well does this represents your views?', clause_id: 9)
  Question.create!(content: 'Does this achieve ICT greatness for the country?', clause_id: 9)
  Question.create!(content: 'Would you like to provide a suggestion?', clause_id: 9)
  Question.create!(content: 'Please suggest your revision', clause_id: 9)


Clause.create!(content: 'Redesign the national education system and curricula:
a.  Incorporate critical thinking and digital literacy skills into Early Childhood Development curriculum,
b.  Provide training, funding and a market for innovative, indigenous e-learning applications and games,
c.  Transform all libraries from information repositories into information hubs with free internet access, e-learning tools, massive online open courses (MOOCs), and space for student groups to meet,
d.  Provide continuing education trainings for teachers that emphasize technological change and new e-learning tools, and
e.  Create a single portal to access all government scholarships and loans for national and international education.',
section_id: 3)

  Question.create!(content: 'How well does this represents your views?', clause_id: 10)
  Question.create!(content: 'Does this achieve ICT greatness for the country?', clause_id: 10)
  Question.create!(content: 'Would you like to provide a suggestion?', clause_id: 10)
  Question.create!(content: 'Please suggest your revision', clause_id: 10)


Clause.create!(content: 'Upgrade Technical and Vocational Education and Training programs to include software and hardware development and maintenance. Furthermore, all TVET programs should be digitally enabled.',
section_id: 3)

  Question.create!(content: 'How well does this represents your views?', clause_id: 11)
  Question.create!(content: 'Does this achieve ICT greatness for the country?', clause_id: 11)
  Question.create!(content: 'Would you like to provide a suggestion?', clause_id: 11)
  Question.create!(content: 'Please suggest your revision', clause_id: 11)

Clause.create!(content: 'Support youth employment through tax incentives that will lower the gross cost to employ youth. Nigerian citizens under 26 years pay zero personal income tax up to N200,000/year, above this rate they pay the normal amount.',
section_id: 3)

  Question.create!(content: 'How well does this represents your views?', clause_id: 12)
  Question.create!(content: 'Does this achieve ICT greatness for the country?', clause_id: 12)
  Question.create!(content: 'Would you like to provide a suggestion?', clause_id: 12)
  Question.create!(content: 'Please suggest your revision', clause_id: 12)

Clause.create!(content: 'Simplify immigration requirements for skilled professionals to start businesses in Nigeria and remove expatriate quotes to facilitate knowledge transfer.',
section_id: 3)
  Question.create!(content: 'How well does this represents your views?', clause_id: 13)
  Question.create!(content: 'Does this achieve ICT greatness for the country?', clause_id: 13)
  Question.create!(content: 'Would you like to provide a suggestion?', clause_id: 13)
  Question.create!(content: 'Please suggest your revision', clause_id: 13)


Clause.create!(content: 'Launch a Public Procurement for Innovation tendering mechanism, using hackathons and innovation challenge methodologies to provide larger government services. In this way the Government can directly seed fund pre-commercial private sector R&D.',
section_id: 3)
  Question.create!(content: 'How well does this represents your views?', clause_id: 14)
  Question.create!(content: 'Does this achieve ICT greatness for the country?', clause_id: 14)
  Question.create!(content: 'Would you like to provide a suggestion?', clause_id: 14)
  Question.create!(content: 'Please suggest your revision', clause_id: 14)


Clause.create!(content: 'Expand funding for Research and Development.',
section_id: 3)

  Question.create!(content: 'How well does this represents your views?', clause_id: 15)
  Question.create!(content: 'Does this achieve ICT greatness for the country?', clause_id: 15)
  Question.create!(content: 'Would you like to provide a suggestion?', clause_id: 15)
  Question.create!(content: 'Please suggest your revision', clause_id: 15)

puts "creating section 3"

Clause.create!(content: 'Build innovation hubs in major population centers where none exist. It is important to avoid duplication, competition and also fragmentation of innovation communities as an innovation community’s strength lies in the dynamism and diversity of its members and its sharing culture.',
section_id: 4)

  Question.create!(content: 'How well does this represents your views?', clause_id: 16)
  Question.create!(content: 'Does this achieve ICT greatness for the country?', clause_id: 16)
  Question.create!(content: 'Would you like to provide a suggestion?', clause_id: 16)
  Question.create!(content: 'Please suggest your revision', clause_id: 16)

Clause.create!(content: 'Provide direct training support for hubs and linkages for nationwide collaborations. The Government will develop a certification scheme for hubs and provide Training of Trainers to build the capabilities of hubs to support entrepreneurs.',
section_id: 4)
  Question.create!(content: 'How well does this represents your views?', clause_id: 17)
  Question.create!(content: 'Does this achieve ICT greatness for the country?', clause_id: 17)
  Question.create!(content: 'Would you like to provide a suggestion?', clause_id: 17)
  Question.create!(content: 'Please suggest your revision', clause_id: 17)

Clause.create!(content: 'Provide tax relief for innovation hubs, as they are providing valuable public services. Innovation hubs are the engines of innovation and entrepreneurship through skills development, ideation and experimentation, technology transfer, and investor matchmaking. Certified innovation hubs will pay zero income tax on revenue up to N10m/year and their employees will pay zero payroll tax on salaries up to N1m/year.  Innovation hubs will also receive tax rebates for any payments for internet and telephone.',
section_id: 4)
  Question.create!(content: 'How well does this represents your views?', clause_id: 18)
  Question.create!(content: 'Does this achieve ICT greatness for the country?', clause_id: 18)
  Question.create!(content: 'Would you like to provide a suggestion?', clause_id: 18)
  Question.create!(content: 'Please suggest your revision', clause_id: 18)

Clause.create!(content: 'Simplify procedures for closing a business. Lowering the cost of business failure, encourages more enterprise and entrepreneurship.',
section_id: 4)
  Question.create!(content: 'How well does this represents your views?', clause_id: 19)
  Question.create!(content: 'Does this achieve ICT greatness for the country?', clause_id: 19)
  Question.create!(content: 'Would you like to provide a suggestion?', clause_id: 19)
  Question.create!(content: 'Please suggest your revision', clause_id: 19)

Clause.create!(content: 'Ease cross-border trade by minimizing the procedures and restrictions on both imports and exports.',
section_id: 4)
  Question.create!(content: 'How well does this represents your views?', clause_id: 20)
  Question.create!(content: 'Does this achieve ICT greatness for the country?', clause_id: 20)
  Question.create!(content: 'Would you like to provide a suggestion?', clause_id: 20)
  Question.create!(content: 'Please suggest your revision', clause_id: 20)

puts "creating section 4"

Clause.create!(content: 'Support Startups development directly through tax breaks. Certified Startups will pay zero corporate tax for up to eight years under N10m/year. And, up to twenty employees will pay zero personal income tax up to N1m.',
section_id: 5)
  Question.create!(content: 'How well does this represents your views?', clause_id: 21)
  Question.create!(content: 'Does this achieve ICT greatness for the country?', clause_id: 21)
  Question.create!(content: 'Would you like to provide a suggestion?', clause_id: 21)
  Question.create!(content: 'Please suggest your revision', clause_id: 21)

Clause.create!(content: 'Establish subsidized credit facilities for Startups.',
section_id: 5)
  Question.create!(content: 'How well does this represents your views?', clause_id: 22)
  Question.create!(content: 'Does this achieve ICT greatness for the country?', clause_id: 22)
  Question.create!(content: 'Would you like to provide a suggestion?', clause_id: 22)
  Question.create!(content: 'Please suggest your revision', clause_id: 22)

Clause.create!(content: 'Incentivize Venture Capital and Angel Investment funds to fund innovative entrepreneurship through tax reductions. Investments in certified Startups will receive full exemptions on capital gains tax.',
section_id: 5)
  Question.create!(content: 'How well does this represents your views?', clause_id: 23)
  Question.create!(content: 'Does this achieve ICT greatness for the country?', clause_id: 23)
  Question.create!(content: 'Would you like to provide a suggestion?', clause_id: 23)
  Question.create!(content: 'Please suggest your revision', clause_id: 23)

Clause.create!(content: 'Subsidize the acquisition of intellectual property protection for certified Startups. The Government will cover the legal and procedural costs for Startups to obtain intellectual property protection for their innovations.',
section_id: 5)
  Question.create!(content: 'How well does this represents your views?', clause_id: 24)
  Question.create!(content: 'Does this achieve ICT greatness for the country?', clause_id: 24)
  Question.create!(content: 'Would you like to provide a suggestion?', clause_id: 24)
  Question.create!(content: 'Please suggest your revision', clause_id: 24)


puts "we done!"
# Question.create!(content: 'Do you feel that this represents your views?', clause_id: 1)
# Question.create!(content: 'How well does this push your country in the direction?', clause_id: 1)
# Question.create!(content: 'Would you like to provide a suggestion?', clause_id: 1)
# Question.create!(content: 'Please suggest a revision', clause_id: 1)

# Question.create!(content: 'Do you feel that this represents your views?', clause_id: 2)
# Question.create!(content: 'How well does this push your country in the direction?', clause_id: 2)
# Question.create!(content: 'Would you like to provide a suggestion?', clause_id: 2)
# Question.create!(content: 'Please suggest a revision', clause_id: 2)

# Question.create!(content: 'Do you feel that this represents your views?', clause_id: 3)
# Question.create!(content: 'How well does this push your country in the direction?', clause_id: 3)
# Question.create!(content: 'Would you like to provide a suggestion?', clause_id: 3)
# Question.create!(content: 'Please suggest a revision', clause_id: 3)

# Question.create!(content: 'Do you feel that this represents your views?', clause_id: 4)
# Question.create!(content: 'How well does this push your country in the direction?', clause_id: 4)
# Question.create!(content: 'Would you like to provide a suggestion?', clause_id: 4)
# Question.create!(content: 'Please suggest a revision', clause_id: 4)

# Question.create!(content: 'Do you feel that this represents your views?', clause_id: 5)
# Question.create!(content: 'How well does this push your country in the direction?', clause_id: 5)
# Question.create!(content: 'Would you like to provide a suggestion?', clause_id: 5)
# Question.create!(content: 'Please suggest a revision', clause_id: 5)

# Question.create!(content: 'Do you feel that this represents your views?', clause_id: 6)
# Question.create!(content: 'How well does this push your country in the direction?', clause_id: 6)
# Question.create!(content: 'Would you like to provide a suggestion?', clause_id: 6)
# Question.create!(content: 'Please suggest a revision', clause_id: 6)


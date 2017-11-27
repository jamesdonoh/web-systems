---
title: Web Systems - Assignment
author: James Donohue - <james.donohue@bbc.co.uk>
---

# Overview (~500 words)

_mymuesli_ is a German company founded in 2007 that sells custom-mixed muesli by post in four European countries. This paper uses _mymuesli_ as a case study of how the Internet and information systems (IS) have the capacity to transform every part of the enterprise, and indeed to be integral to how it achieves its objectives.

## e-Business models

Papazoglou and Ribbers [-@papazoglou] define an e-Business model as "descriptive representation of the fundamental components of a business that operates partially or completely on the Internet". A detailed discussion of features common to all business models, not just ones for e-Business (such as value proposition and revenue model), is beyond the scope of this paper. However, using the authors' classification system for such models, we can see that _mymuesli_ is an 'Internet-enabled' business and falls specifically within the business-to-consumer (B2C) category of 'e-Shop' proposed by [@timmers]. 

The company produces a 'niche' product which may have been prohibitively expensive to sell and distribute prior to the Internet. By operating as an e-Shop, _mymuesli_ gains a "low-cost route to global presence" [@timmers], meaning that company has the potential to be profitable selling its product direct to consumers around the world without the need for costly intermediaries. Another way of putting this is to say that the Internet allows manufacturers to "compress the distribution channel" [-@rappa].

On the other hand, although the Internet makes the physical distance between _mymuesli_ and its customers less of a problem, it creates other kinds of challenges, such as increased competition and the relative ease with which a customer can abandon their 'shopping basket' and buy from a competitor instead. There is also an increased need to focus on online marketing and search engine optimisation (SEO) to ensure that customers find the product in the first place.

It is notable that since 2012 _mymuesli_ has also operated two physical stores in Germany [@mymuesli], putting it in an unusual category, along with others such as Amazon [@mccarthy], of a company that initially only operated online but later opened high street shops and raises the question (originally framed around traditional retailers embracing the web) of finding the right "mix of bricks and clicks" [@gulati]. One goal of this stategy is be to build customer awareness of the brand and provide more promotion opportunities.

Furthermore, should _mymuesli_ enter the hotel market its business model will also encompass business-to-business (B2B) interactions. The idea of allowing a hotel chain to offer a custom breakfast "by mymuesli" is an instance of 'co-branding', which not only exposes _mymuesli_'s offering to a wide range of potential customers but also "enhances the credibility of the hotel’s brand by borrowing credibility from other brands" [@yip]. Combined with an Application Programming Interface (API) for receiving and fulfilling hotel orders, this would represent a step towards a Value Web e-Business model based on inter-company-relationships that exploit the possibilities of new technology [@papazoglou].

## Role of information systems in e-Business

Information systems (IS) now have a major role in most businesses, but they are even more critical to businesses that conduct the majority of their activity online such as _mymuesli_. For Stair and Reynolds [-@stair] "information is one of an organisation's most valuable resources", and a key function of an organisation's information systems is to collect and manipulate data and transform them into information which can provide value to the organisations' decision-makers.

In the case of _mymuesli_ data might include raw facts such as a customer postal address, stock levels for a particular muesli ingredient or an individual order number. By creating relationships between these data valuable information can be generated, such as the number of orders ready for shipping to a particular postcode, or an estimated date when stock will run out (based on historical orders). As well as allowing management to monitor the business effectively, this information can also be used as a basis for prediction. The use of computer-based information systems (CBIS) would therefore allow _mymuesli_ to anticipate demand by ordering new stock automatically and leverage economies of scale by batching up orders for delivery to the same area. This 'feedback mechanism' within such systems is what allows the business to adapt to changing market conditions and "is critical to helping organisations achieve their goals, such as increasing profits" [@stair].

## Implications of mass customisation for manufacturing process

Although it also offers pre-configured 'off-the-shelf' muesli mixes, the ability to offer a customised muesli is integral to _mymuesli_'s value proposition, as indicated by the company's name. This reflects the trend towards mass customisation, the intent to "provide products and services that best serve customer needs while maintaining near-mass production efficiency" [@tseng]. Such an approach means that manufacturing and distribution processes must be designed with customisation in mind rather than as an afterthought. This is because, as Pine [-@pine] points out, one key requirement for business processes designed to support mass customisation is that they are _instantaneous_, meaning they can be linked together as quickly as possible. Therefore a design goal of the manufacturing process must be for it to rapidly assemble any combination of muesli ingredients for a given order in the correct quantities with the minimum of errors.

One helpful step is is to reduce the number of possible combinations of ingredients. Although the _mymuesli_ website 'mixer' shows 76 options, in fact all mixes must include one of the 14 standard muesli bases such as 'Five Grains'; this corresponds to the 'common base' within the product family architecture described by Tseng and Jiao [-@tseng]. These bases can be pre-filled into cartons (according to their projected popularity) prior to any actual order being received, leaving only 62 actual custom options and reducing the number of potential permutations significantly. Further time savings can be made by pre-mixing combinations of ingredients that are frequently ordered together.

In order to minimise human error (and therefore waste) as far as possible, a fully automated mixing apparatus is envisaged that routes different ingredients from bulk containers and adds them to the carton for each order. The flow of material into the mixer is stopped when an electronic scale underneath the carton senses that the correct quantity has been added, with stock levels also being updated automatically. A number of cartons could be filled in quick succession by being placed on an automated guided vehicle (AGV) that moves under a series of suitably arranged storage bins; note this is the approach used by the ReciPure system [@recipure].

### Tracking methods

Another important tool for automating the production process is barcodes, an example of machine-readable data input [@stair]. If _mymuesli_ attaches a barcode containing a representation of the order number to each carton at the start of production, and scanned it repeatedly, the location of the carton and therefore the order's progress can be tracked with relative certainity.

On the production line, by reading the barcode and looking up the order details, the mixing apparatus can know how much of each ingredient to dispense. Similarly, when orders are collected for distribution by courier, the barcode can be scanned to trigger the status of the order to automatically be updated to 'shipped'. In this way barcodes (including 2D variants such as QR Codes) assist with traceability of orders and reduce the scope for errors. Recording a timestamp along with each scan allows for analysis of how much time orders are taking prepare. A smartphone app offers a relatively simple and portable way of integrating barcode functionality into production processes: by using the phone's camera, staff can access or edit data about the order wherever they are.

## Impact of web technology

(overview of web technologies; evolution of web to back-end/internal systems)

## How does mymuesli work? 

(describe value chain)

## Quality control processes

# Solution architecture: mymuesli (~3000 words)

## Common concerns

### Business process modelling

Business process modelling is a form of analysis that describes the dynamic activities performed by a business. One objective of creating a process model is to gain insights into how a business operates, which once validated can be used during the design phase of an information system to assist in the creation of further artefacts such as a data model [@aalst]. For example, when a customer is ready to place an order with _mymuesli_, the company must acquire the user's postal address in order to know where to dispatch the order to when ready, either by retrieving it from information system storage if the user has previously logged in or asking the user to provide it at checkout. This entails that any data/object model for the customer must include all required address information.

![Business process for associating an address with an order in BPMN\label{account}](account.pdf)

There are a number of normative visual languages available for describing businesses processes. One example of these is Business Process Modelling Notation (BPMN), which uses defined symbols for events, tasks, flows and gateways to model business processes. Figure \ref{account} shows such a BPMN diagram representing the process for a postal address being associated with an order. Although BPMN has some similarities with the UML activity diagrams familiar to many working in software development [@uml], one aim of BPMN is to be intelligible by a wide range of business users and not just developers [@papazoglou]. On the other hand, one weakness of BPMN in contrast to earlier approaches such as 'classical' Petri nets is its lack of formal semantics in some areas, meaning that BPMN diagrams "typically lack the precise mathematical basis that is required to render them really unambiguous" [@kossak]. Even with this caveat, it remains a useful high-level tool for intra- and inter-business communication.

#### Identifying the business scope

Papazoglou and Rivers [-@papazoglou] suggest that, by making 'business rules' visible, business process models make it easier for companies to adapt in changing market conditions. This advantage is likely to be of particular relevance to retailers such as _mymuesli_ that operate primarily in the rapidly-changing online environment.

In order to employ a systems approach to modelling business, a necessary first step is to identify the system boundary. An analogous step is required in the Unified Process, where the requirements analyst must determine what is part of the system (i.e. inside the system boundary) and what is in its environment before use case modelling can begin [@arlow]. For the current study, the system boundary encompasses the _mymuesli_ online shop, the manufacturing process ...

#### Outsourcing

From a resource-based view of e-Business, a company's resources and competences are what lead to value creation and differentiate the company from its competitors. This implies that innovative companies should consider which functions are core to their business and which can be left to others, particularly where they are performed on too small a scale to be economical. For Papazoglou and Ribbers, "strategic outsourcing of all activities that are not core competencies potentially allows a company to focus on all those areas which add most value" [-@papazoglou].

Obvious core competencies for _mymuesli_ are the sourcing and selection of appealing muesli ingredients, mixing and packaging the muesli, and coordinating website marketing. Non-core activities that are candidates for outsourcing include delivery of orders to customer addresses, accounting and human resources (HR), processing credit card transactions and supporting the servers that run the website. However, the choice is less clear-cut in some areas: is writing the website application code a core competency, or something that could be handled by a managed e-commerce platform such as [Shopify](https://www.shopify.co.uk/)?.

#### Process management software

(mention reasons for using it/integrating with it; idea of executable models; MDA?)

#### Specifc process challenges for mymuesli

(Seven wastes of lean: inventory; waiting)
(https://en.wikipedia.org/wiki/Muda_(Japanese_term))

### Outsourcing and Cloud computing

(different levels of outsourcing; IaaS vs SaaS; 'undifferentiated heavy lifting')

### Security

## Web front-end

### Functional characteristics

(search, shopping basket, registration)

### Device and platform support

## Order management and payment

## Manufacturing

### Purchasing

### Storage

## Shipping

## Business-to-business

### Semantics

(brief treatment of ontologies; semantic web)

## Other functions

### Accounting

### HR

# Detailed technical investigation: distributed microservices (~1000 words)

## Evolution of web services and service-oriented architecture

## Challenges of distributed systems

## Analysis and design of microservices

## Virtualisation and containerisation

# Conclusion (~500 words)

## Applications of problem to BBC

## Suggestions for further work

# References

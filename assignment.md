---
title: Web Systems - Assignment
author: James Donohue - <james.donohue@bbc.co.uk>
---

# Business and technological context (~1000 words)

_mymuesli_ is a German company founded in 2007 that sells custom-mixed muesli by post in four European countries. This paper uses _mymuesli_ as a case study of how the Internet and information systems (IS) have the capacity to transform every part of the enterprise, and indeed to be integral to how it achieves its objectives.

## e-Business models

Papazoglou and Ribbers [-@papazoglou] define an e-Business model as "descriptive representation of the fundamental components of a business that operates partially or completely on the Internet". A detailed discussion of features common to all business models, not just ones for e-Business (such as value proposition and revenue model), is beyond the scope of this paper. However, using the authors' classification system for such models, we can see that _mymuesli_ is an 'Internet-enabled' business and falls specifically within the business-to-consumer (B2C) category of 'e-Shop' proposed by [@timmers]. 

The company produces a 'niche' product which may have been prohibitively expensive to sell and distribute prior to the Internet. By operating as an e-Shop, _mymuesli_ gains a "low-cost route to global presence" [@timmers], meaning that company has the potential to be profitable selling its product direct to consumers around the world without the need for costly intermediaries. Another way of putting this is to say that the Internet allows manufacturers to "compress the distribution channel" [-@rappa].

On the other hand, although the Internet makes the physical distance between _mymuesli_ and its customers less of a problem, it creates other kinds of challenges, such as increased competition and the relative ease with which a customer can abandon their 'shopping basket' and buy from a competitor instead (low customer switching costs, in Porter's terms [-@porter]). There is also an increased need to focus on online marketing and search engine optimisation (SEO) to ensure that customers find the product in the first place.

It is notable that since 2012 _mymuesli_ has also operated two physical stores in Germany [@mymuesli], putting it in an unusual category, along with others such as Amazon [@mccarthy], of a company that initially only operated online but later opened high street shops and raises the question (originally framed around traditional retailers embracing the web) of finding the right "mix of bricks and clicks" [@gulati]. One goal of this stategy is be to build customer awareness of the brand and provide more promotion opportunities.

Furthermore, should _mymuesli_ enter the hotel market its business model will also encompass business-to-business (B2B) interactions. The idea of allowing a hotel chain to offer a custom breakfast "by mymuesli" is an instance of 'co-branding', which not only exposes _mymuesli_'s offering to a wide range of potential customers but also "enhances the credibility of the hotel’s brand by borrowing credibility from other brands" [@yip]. Combined with an Application Programming Interface (API) for receiving and fulfilling hotel orders, this would represent a step towards a Value Web e-Business model based on inter-company-relationships that exploit the possibilities of new technology [@papazoglou].

## Role of information systems

Information systems (IS) now have a major role in most businesses, but they are even more critical to businesses that conduct the majority of their activity online such as _mymuesli_. For Stair and Reynolds [-@stair] "information is one of an organisation's most valuable resources", and a key function of an organisation's information systems is to collect and manipulate data and transform them into information which can provide value to the organisations' decision-makers.

In the case of _mymuesli_ data might include raw facts such as a customer postal address, stock levels for a particular muesli ingredient or an individual order number. By creating relationships between these data valuable information can be generated, such as the number of orders ready for shipping to a particular postcode, or an estimated date when stock will run out (based on historical orders). As well as allowing management to monitor the business effectively, this information can also be used as a basis for prediction. The use of computer-based information systems (CBIS) would therefore allow _mymuesli_ to anticipate demand by ordering new stock automatically and leverage economies of scale by batching up orders for delivery to the same area. This 'feedback mechanism' within such systems is what allows the business to adapt to changing market conditions and "is critical to helping organisations achieve their goals, such as increasing profits" [@stair].

## Impact of web technology

(overview of web technologies; evolution of web to back-end/internal systems)

# Solution architecture (~2750 words)

## Business processses

### Modelling processes using BPMN

Business process modelling is a form of analysis that describes the dynamic activities performed by a business. One objective of creating a process model is to gain insights into how a business operates, which once validated can be used during the design phase of an information system to assist in the creation of further artefacts such as a data model [@aalst]. For example, when a customer is ready to place an order with _mymuesli_, the company must acquire the user's postal address in order to know where to dispatch the order to when ready, either by retrieving it from information system storage if the user has previously logged in or asking the user to provide it at checkout. This entails that any data/object model for the customer must include all required address information.

![Business process for associating an address with an order in BPMN\label{account}](account.pdf)

There are a number of normative visual languages available for describing businesses processes. One example of these is Business Process Modelling Notation (BPMN), which uses defined symbols for events, tasks, flows and gateways to model business processes. Figure \ref{account} shows such a BPMN diagram representing the process for a postal address being associated with an order. Although BPMN has some similarities with the UML activity diagrams familiar to many working in software development [@uml], one aim of BPMN is to be intelligible by a wide range of business users and not just developers [@papazoglou]. On the other hand, one weakness of BPMN in contrast to earlier approaches such as 'classical' Petri nets is its lack of formal semantics in some areas, meaning that BPMN diagrams "typically lack the precise mathematical basis that is required to render them really unambiguous" [@kossak]. Even with this caveat, it remains a useful high-level tool for intra- and inter-business communication.

### System boundaries and outsourcing

Papazoglou and Rivers [-@papazoglou] suggest that, by making 'business rules' visible, business process models make it easier for companies to adapt in changing market conditions. This advantage is likely to be of particular relevance to retailers such as _mymuesli_ that operate primarily in the rapidly-changing online environment.

In order to employ a systems approach to modelling business, a necessary first step is to identify the system boundary. An analogous step is required in the Unified Process, where the requirements analyst must determine what is part of the system (i.e. inside the system boundary) and what is in its environment before use case modelling can begin [@arlow]. For the current study, the system boundary encompasses the _mymuesli_ online shop, the manufacturing process ...

_mymuesli_'s competitive position can be evaluated within the framework of Porter's five forces [-@porter] in order to formulate a strategy. As it sells a niche, bespoke product the threat of substitutes is relatively low, partly due to the high costs of entry for competitors in replicating the required customisable production line and online 'mixer' interface. This means there are currently no direct competitors. However, suppliers of raw ingredients are relatively powerful and can pass on rises in the price of crops (for example) to _mymuesli_, and customers may become price sensitive toward the product.

This suggests that _mymuesli_ should guard against increasing supplier power further by not being dependent on external suppliers of IT services that can increase their prices and cannot be easily replaced.

From a resource-based view of e-Business, a company's resources and competences are what lead to value creation and differentiate the company from its competitors. This implies that innovative companies should consider which functions are core to their business and which can be left to others, particularly where they are performed on too small a scale to be economical. For Papazoglou and Ribbers, "strategic outsourcing of all activities that are not core competencies potentially allows a company to focus on all those areas which add most value" [-@papazoglou]. This echoes Peter Drucker's famous maxim of "do what you do best and outsource the rest" [@forbes].

Obvious core competencies for _mymuesli_ are the sourcing and selection of appealing muesli ingredients, mixing and packaging the muesli, and deciding how and where to market the website. Non-core activities that are candidates for outsourcing include delivery of orders to customer addresses, accounting and human resources (HR), copywriting, graphic design, processing credit card transactions and supporting the servers that run the website. However, the choice is less clear-cut in some areas: is writing the website application code a core competency, or something that could be handled by a managed e-commerce platform such as [Shopify](https://www.shopify.co.uk/)?. Some of this is summarised in Table \ref{outsourcing}.

------------------------------------------------------------------------------------------
Function                        Example activities                                      
------------------------------  ----------------------------------------------------------
Accounting                      Corporate tax return, VAT, payroll                     

Human resources                 ?

IT                              E-mail, ...

------------------------------------------------------------------------------------------

Table: Summary of candidate functions for outsourcing \label{outsourcing}.

#### RPC from SOAP to REST

Remote Procedure Call (RPC) is "an interprocess communication (IPC) mechanism that enables data exchange and invocation of functionality residing in a different process" [@microsoft]. Such invocations are normally synchronous request-response interactions (meaning that the calling process 'blocks' until a response is received), and presented as if they were normal local procedure calls, thereby abstracting the details of communicating with the remote process from the developer; popular implementations include CORBA, Java's RMI and .NET remoting [@hohpe]. The first wave of web services adopted a similar approach, implementing RPC-style interactions on top of SOAP and HTTP. Unlike the implementations listed above, SOAP is an open standard and uses XML to encapsuate a method call and its response in a platform-independent way, with the goal of being both simple and extensible [@soap]. It is complemented by technologies such as Web Service Description Language (WSDL) and Universal Description, Discovery, and Integration (UDDI), which allows SOAP clients to discover what services are available, where to find them and what operations they support.

By contrast, REST grew in popularity in the early 2000s as a more lightweight and less verbose alternative to SOAP that leans more on the inherent statelessness and semantics of HTTP methods (e.g. `PUT`, `DELETE`) and a uniform interface based around URIs to provide web service capabilities. Another design goal of REST was to leverage the caching capabilities of HTTP to provide improved scalability for web services [@fielding].

Despite this, most RESTful web services are still implemented through the synchronous request-response paradigm of RPC. Moreover, as an 'architectural style' instead of a protocol, REST lacks features provided by SOAP such as built-in mappings of data types to byte sequences or standardised error handling. SOAP also benefits from considerable support in enterprise tooling and automation that is only now becoming available in REST.

(relate to mymuesli?)

[@chaffey]?

#### Service-oriented and microservices architectures

Service-Oriented Architecture (SOA) is an approach to designing systems where specific functions (such as managing customer details) purposely implemented as networked services that can be used by other applications, allowing a complex (and perhaps distributed) information system to be built in a more modular fashion out of interconnected parts that can be developed and modified independently [@stair].

Depending on the area of functionality these services cover, a SOA may share some characteristics with a microservices architecture. In the approach made famous in the web sphere by companies like Netflix, microservices are usually RESTful rather than SOAP-based and highly granular, aiming to "do one thing very well" [@stair]. Microservices generally aim for an organic 'bottom-up' approach rather than a 'top-down' model where all service interfaces are architected by a central team and and commonly use middleware such as enterprise service bus (ESB) as an integration point.

One challenge with a microservices approach is creating a machine-readable description of services to allow for discovery and negotation by clients. Some authors consider the need for a service directory and a description of each service's interface to be central to SOA [@hohpe]. While SOAP and WSDL support these requirements in the enterprise SOA context, REST has no such built-in capabilities, and although equivalents for RESTful services (such as as Swagger, now known as the OpenAPI Specification) have emerged [@swagger] they are still relatively immature.

#### Heterogenous infrastructure

According to Hohpe and Woolf [-@hohpe], "creating a single, big application to run a complete business is next to impossible", despite the efforts of some Enterprise Resource Planning (ERP) vendors such as SAP. This means that it is unrealistic to expect an existing commercial off-the-shelf (COTS) system to implement all of a business' needs, or to write such a system from scratch. Using multiple different applications has the benefit of allowing businesses to use a 'best of breed' approach in selecting the right software for each function. However, where companies have such pre-existing IT infrastructure the need for integration between systems arises. Enterprise Application Integration (EAI) attempts to solve this problem through middleware providing features such as messaging and workflow management [@hohpe].

For the purpose of this study we can imagine _mymuesli_ as a 'green field' project without any 'legacy' IT infrastructure. However it is possible that the company would still choose to buy some existing off-the-shelf software to provide certain functions, such as accounting, and may aquire diverse information systems as a result of acquisitions or mergers [@stair]. In this scenario the company might consider implementing an EAI suite to facilitate the integration of these systems.

#### Beyond RPC: Loose coupling and message-oriented middleware

One important aspect of designing information systems is the need to accept that change is inevitable, whether to business requirements or within the systems that provide different business functions, even as part of normal maintenance. For example, upgrading a stock control system to the latest version could break interoperability with a linked accounting system. Moreover, faults occur and distributed systems may become unavailable for periods of time. Although some Remote Procedure Call (RPC) implementations allow synchronous remote requests to be made by simply calling a method, for Hohpe and Woolf [-@hohpe] the idea of abstracting RPC using the semantics of a local method call is 'asking for trouble' due to the increased unpredictability involved.

Loose coupling is the name given to the design goal of reducing number of assumptions that systems make about each other in order to increase tolerance to change and failure. Loose coupling (also a design goal of SOA) advocates using platform-independent, self-describing data formats and (in an EAI context) eliminating the temporal dependency by rethinking remote calls into self-contained asynchronous messages that are sent to a logical 'channel', an approach usually implemented through message-oriented middleware, or MOM. Such systems may also offer the ability to translate between message formats and route messages to different places depending on their contents, along with a system management and monitoring functions [@hohpe]. Despite increased flexiblity, the downside of these approaches is that they can be more complex to design, implement and debug.

#### Process management software

(mention reasons for using it/integrating with it; idea of executable models; MDA?)

(Tom: jBPM - engine, JBoss BPM suite - develop and deploy)

#### Specifc process challenges for mymuesli

(Seven wastes of lean: inventory; waiting)
(https://en.wikipedia.org/wiki/Muda_(Japanese_term))

### Cloud computing

(different levels of outsourcing; IaaS vs SaaS; 'undifferentiated heavy lifting')

## Impact of mass customisation on production

Although it also offers pre-configured 'off-the-shelf' muesli mixes, the ability to offer a customised muesli is integral to _mymuesli_'s value proposition, as indicated by the company's name. This reflects the trend towards mass customisation, the intent to "provide products and services that best serve customer needs while maintaining near-mass production efficiency" [@tseng]. Such an approach means that manufacturing and distribution processes must be designed with customisation in mind rather than as an afterthought. This is because, as Pine [-@pine] points out, one key requirement for business processes designed to support mass customisation is that they are _instantaneous_, meaning they can be linked together as quickly as possible. Therefore a design goal of the manufacturing process must be for it to rapidly assemble any combination of muesli ingredients for a given order in the correct quantities with the minimum of errors.

One helpful step is is to reduce the number of possible combinations of ingredients. Although the _mymuesli_ website 'mixer' shows 76 options, in fact all mixes must include one of the 14 standard muesli bases such as 'Five Grains'; this corresponds to the 'common base' within the product family architecture described by Tseng and Jiao [-@tseng]. These bases can be pre-filled into cartons (according to their projected popularity) prior to any actual order being received, leaving only 62 actual custom options and reducing the number of potential permutations significantly. Further time savings can be made by pre-mixing combinations of ingredients that are frequently ordered together.

In order to minimise human error (and therefore waste) as far as possible, a fully automated mixing apparatus is envisaged that routes different ingredients from bulk containers and adds them to the carton for each order. The flow of material into the mixer is stopped when an electronic scale underneath the carton senses that the correct quantity has been added, with stock levels also being updated automatically. A number of cartons could be filled in quick succession by being placed on an automated guided vehicle (AGV) that moves under a series of suitably arranged storage bins; note this is the approach used by the ReciPure system [@recipure].

### Tracking systems

Another important tool for automating the production process is barcodes, an example of machine-readable data input [@stair]. If _mymuesli_ attaches a barcode containing a representation of the order number to each carton at the start of production, and scanned it repeatedly, the location of the carton and therefore the order's progress can be tracked with relative certainity.

On the production line, by reading the barcode and looking up the order details, the mixing apparatus can know how much of each ingredient to dispense. Similarly, when orders are collected for distribution by courier, the barcode can be scanned to trigger the status of the order to automatically be updated to 'shipped'. In this way barcodes (including 2D variants such as QR Codes) assist with traceability of orders and reduce the scope for errors. Recording a timestamp along with each scan allows for analysis of how much time orders are taking prepare. A smartphone app offers a relatively simple and portable way of integrating barcode functionality into production processes: by using the phone's camera, staff can access or edit data about the order wherever they are.

## Web front-end

It is apparent that like most e-shops this company requires a web front-end which allows customers to order its products effectively. However, unlike online merchants such as Amazon, which sell a wide range of standardised products with limited options (such as different sizes for a t-shirt) through a mostly standardised interface, the composition of a _mymuesli_ order must be tailored extensively by the customer.

This therefore requires either the creation of an bespoke web interface, or the use of an e-commerce platform designed with customised products in mind.

The following are some typical features that any web shop front-end would be expected to provide:

Account management
:   Allows customers to create an account, update their address, change their password, etc.

Search
:   Enables the discovery of products by allowing customers to search for a particular ingredient or mix by name

Shopping basket
:   Lets the customer temporarily store a mix before placing an order (e.g. while they add other mixes)

Order tracking and management
:   Allows the customer to check the status of their order and review previous orders

E-mail notifications
:   Sends e-mails to the customer once their order is received, shipped, etc.

Support interface
:   Allows users to send other questions associated with their account/order, as well as general feedback, and receive a timely response

Since the above features, with some variations, are common to most online shops, _mymuesli_ could save duplicated development effort and therefore reduce costs by using existing implementations, either by licensing a commercial e-commerce system or an e-commerce Software as a Service (Saas) platform.

#### COTS e-commerce systems

Commercial-off-the-shelf (COTS) e-commerce platforms provide businesses with a range of ready-made e-commerce functionality that may combine a web storefront with an internal order management interface, often with a high level of flexiblility. For example, IBM WebSphere Commerce allows developers with the requisite knowledge of Java, JSP and XML to create custom user interface 'widgets' and back-end integrations [@ibm]. These platforms may also cater to 'omni-channel' models (including in-store and call centres as well as e-commerce), and can even communicate with legacy mainframe fulfilment or stock control systems via an Enterprise Service Bus (ESB). They are often (though not necessarily) installed on on-premises hardware to allow the necessary integrations to be implemented.


On the other hand, some e-commerce platforms allow the creation of 'plugins', modules of reusable code which add functionality to the platform or customise its behaviour, by means of a defined plugin interface (API) provided by the platform. This enables third-party developers to write and sell plugins that address recurring requirements not provided by the base platform, more mature platforms even provide an [app store](https://apps.shopify.com/) to make buying and installing these plugins easier and also providing another revenue stream for the vendor.

The mixer interface needs to implement a number of business rules which are specific to _mymuesli_, for example:

- all mixes must include exactly one of the standard base ingredients
- there is an upper limit on the number of ingredients that can be added (due to finite carton size)
- each muesli should be able to have a custom name and description which will be printed on the tube

In addition, the online shop includes very specific features which provide further feedback to the user as they customise their museli, improving the overall user experience, such as a chart of nutritional information, a list of raw ingredients and other visual hints indicating the flavour profile and other characteristics of the mix (e.g. 'high fibre'). All of this points towards the need for the development of a bespoke interface.


(search, shopping basket, registration)

### Account management

### Device and platform support

## Payment

## Warehouse and purchasing

## Shipping

## A business-to-business (B2B) perspective: hotel services

One way that business strategists can maximise profits and ensure sustainability is by increasing product accessibility [@porter]. By providing breakfast services to hotels, _mymuesli_ could open a new channel to customers and raise awareness of its products, however this comes at a cost of the additional complexity of implementing the B2B interface, negotiating service level agreements (SLAs) etc. and also increased risks arising from the introduction of a third party (hotels) to muesli sales.

### Hotel ordering and tracking API



### Approaches to RPC

(REST vs SOAP)

### Semantics

(brief treatment of ontologies; semantic web)

## Other cross-functional concerns

### Quality assurance 

One key aspect of trading is ensuring the quality of the product and/or service being received by the customer, and e-commerce is no exception. Suitably-trained staff working in the _mymuesli_ production facility should be able to randomly sample mixes prior to shipping to ensure their contents and the carton label match the order details received via the website, with the information quickly displayed on a smartphone by scanning the barcode.  Any discrepancies or failure to meet the required standard can be logged by the system so that managment have visiblity of failure rates and can respond quickly in the event of a spike in problems.

The same approach could be used to capture the number of complaints received by customers via the support interface and categorise them (e.g. delivery problems, quality issues, website errors) in order to priorities areas of the business process in need of improvement (the feedback mechanism described earlier).

### Resilience of infrastructure

### Security

# Detailed technical investigation: distributed microservices (~750 words)

## Evolution of web services and service-oriented architecture

(SOA?)

## Challenges of distributed systems

## Analysis and design of microservices

(Virtualisation and containerisation)

# Conclusion (~500 words)

## Applications of problem to [[]]

## Suggestions for further work

(create mobile app that uses API)

# References

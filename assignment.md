---
title: Web Systems - Assignment
author: James Donohue - <james.donohue@bbc.co.uk>
---

# Overview (~500 words)

_mymuesli_ is a German company founded in 2007 that sells custom-mixed muesli by post in four European countries. This paper uses _mymuesli_ as a case study of how the Internet and information systems (IS) have the capacity to transform every part of the enterprise, and indeed to be integral to how it achieves its objectives.

## e-Business models

Papazoglou and Ribbers [-@papazoglou] define an e-Business model as "descriptive representation of the fundamental components of a business that operates partially or completely on the Internet". Using the authors' classification system for such models, we can see that _mymuesli_ is an 'Internet-enabled' business and falls specifically within the business-to-consumer (B2C) category of 'e-Shop' proposed by [@timmers]. 

The company produces a 'niche' product which may have been prohibitively expensive to sell and distribute prior to the Internet. By operating as an e-Shop, _mymuesli_ gains a "low-cost route to global presence" [@timmers], meaning that company has the potential to be profitable selling its product direct to consumers around the world without intermediaries and the need for significant economies of scale. Another way of putting this is to say that the Internet allows manufacturers to "compress the distribution channel" [-@rappa].

On the other hand, although the Internet makes the physical distance between _mymuesli_ and its customers less of a problem, it creates other kinds of challenges, such as increased competition and the relative ease with which a customer can abandon their 'shopping basket' and buy from a competitor instead. There is also an increased need to focus on online marketing and search engine optimisation (SEO) to ensure that customers find the product in the first place.

It is noteworthy that since 2012 _mymuesli_ has also operated two physical stores in Germany [@mymuesli], putting it in an unusual category, along with others such as Amazon [@mccarthy], of a company that initially only operated online but later opened high street shops and raises the question (originally framed around traditional retailers embracing the web) of finding the right "mix of bricks and clicks" [@gulati]. One goal of this stategy is be to build customer awareness of the brand and provide more promotion opportunities.

Furthermore, should _mymuesli_ enter the hotel market its business model will also encompass business-to-business (B2B) sales. The idea of allowing a hotel chain to offer a custom breakfast "by mymuesli" is an instance of 'co-branding', which not only exposes _mymuesli_'s offering to a wide range of potential customers but also "enhances the credibility of the hotel’s brand by borrowing credibility from other brands" [@yip]. Combined with an Application Programming Interface (API) for receiving and fulfilling hotel orders, this would represent a step towards a Value Web e-Business model based on inter-company-relationships that exploit the possibilities of new technology [@papazoglou].

## Role of information systems 

Information systems now have an increasingly large role to play in most businesses. An information system (IS) can be defined as "a set of interrelated components that collect, manipulate, store and disseminate data and information and provide a feedback mechanism to meet an objective" [@stair]. For a company that manufactures a physical product such as _mymuesli_, the use of computer-based information systems (CBIS) will be an essential way of ensuring that the objective is realised, specifically the generation of a profit.

(change quote, describe use of data and 'system')


## Impact of web technology

(overview of web technologies; evolution of web to back-end/internal systems)

# Solution architecture: mymuesli (~3000 words)

## Common concerns

### Business process modelling

Business process modelling is a form of analysis that describes the dynamic activities performed by a business. One objective of creating a process model is to gain insights into how a business operates, which once validated can be used during the design phase of an information system to assist in the creation of further artefacts such as a data model [@aalst]. For example, when a customer is ready to place an order with _mymuesli_, the company must acquire the user's postal address in order to know where to dispatch the order to when ready, either by retrieving it from information system storage if the user has previously logged in or asking the user to provide it at checkout. This entails that any data/object model for the customer must include all required address information.

![Business process for associating an address with an order in BPMN\label{account}](account.pdf)

There are a number of normative visual languages available for describing businesses processes. One example of these is Business Process Modelling Notation (BPMN), which uses defined symbols for events, tasks, flows and gateways to model business processes. Figure \ref{account} shows such a BPMN diagram representing the process for a postal address being associated with an order. Although BPMN has some similarities with the UML activity diagrams familiar to many working in software development [@uml], one aim of BPMN is to be intelligible by a wide range of business users and not just developers [@papazoglou]. On the other hand, one weakness of BPMN in contrast to earlier approaches such as 'classical' Petri nets is its lack of formal semantics in some areas, meaning that BPMN diagrams "typically lack the precise mathematical basis that is required to render them really unambiguous" [@kossak]. Even with this caveat, it remains a useful high-level tool for intra- and inter-business communication.

#### Identifying the business scope

Papazoglou and Rivers [-@papazoglou] suggest that, by making 'business rules' visible, business process models make it easier for companies to adapt in changing market conditions. This advantage is likely to be of particular relevance to retailers such as _mymuesli_ that operate primarily in the rapidly-changing online environment.

In order to employ a systems approach to modelling business, a necessary first step is to identify the system boundary. An analogous step is required in the Unified Process, where the requirements analyst must determine what is part of the system (i.e. inside the system boundary) and what is in its environment before use case modelling can begin [@arlow]. For the current study, the system boundary encompasses the _mymuesli_ online shop, the manufacturing process ...

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

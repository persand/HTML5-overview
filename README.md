HTML5 Overview
==============

An overview of all HTML5 standardization activities. For now, this content is also [published on my blog](http://dret.typepad.com/dretblog/html5-api-overview.html) by [transforming it to HTML](xml2html.xsl), but this may change over time.

HTML5 is more a movement (or maybe it's more appropriate to call it a *brand*) than it is a technology. it says "more power to the browser" and mostly means "more power to the browser *as a programming platform*". Given this focus of HTML5, it is surprisingly hard to find a good place where all the APIs under development are listed. This collection is an attempt to have all that information in one place. The current status captured on this page lists 80 current specifications and 7 expired specifications (87 total). Since the HTML5 landscape is changing fairly quickly, it is likely that some information on this page is outdated. If that is the case, please submit an issue or create a pull request. Thanks!

I am currently working on making this page as complete as the blog page. As a starting point, here's a status-ordered list of all HTML5 specs covered in the [XML source for this page](html5.xml), containing a total of 87 specs (for a classification and abstracts, [please visit the blog for now](http://dret.typepad.com/dretblog/html5-api-overview.html) or [use the XML source](html5.xml)):


Recommendations (6 Specs)
----------------

* [Geolocation API Specification](http://www.w3.org/TR/geolocation-API "This specification defines an API that provides scripted access to geographical location information associated with the hosting device.")
* [High Resolution Time](http://www.w3.org/TR/hr-time "This specification defines a JavaScript interface that provides the current time in sub-millisecond resolution and such that it is not subject to system clock skew or adjustments.")
* [Navigation Timing](http://www.w3.org/TR/navigation-timing "This specification defines an interface for web applications to access timing information related to navigation and elements.")
* [Page Visibility](http://www.w3.org/TR/page-visibility "This specification defines a means for site developers to programmatically determine the current visibility state of the page in order to develop power and CPU efficient web applications.")
* [Touch Events](http://www.w3.org/TR/touch-events "The Touch Events specification defines a set of low-level events that represent one or more points of contact with a touch-sensitive surface, and changes of those points with respect to the surface and any DOM elements displayed upon it (e.g. for touch screens) or associated with it (e.g. for drawing tablets without displays). It also addresses pen-tablet devices, such as drawing tablets, with consideration toward stylus capabilities.")
* [Web Storage](http://www.w3.org/TR/webstorage "This specification defines an API for persistent data storage of key-value pair data in Web clients.")

Proposed Recommendations (2 Specs)
----------------

* [Performance Timeline](http://www.w3.org/TR/performance-timeline "This specification defines an interface for web applications to access timing information related to navigation and elements.")
* [User Timing](http://www.w3.org/TR/user-timing "This specification defines an interface to help web developers measure the performance of their applications by giving them access to high precision timestamps.")

Candidate Recommendations (15 Specs)
----------------

* [Ambient Light Events](http://www.w3.org/TR/ambient-light "This specification defines a means to receive events that correspond to a light sensor detecting the presence of a light.")
* [Battery Status Event Specification](http://www.w3.org/TR/battery-status "This specification defines a new DOM event type that provides information about the battery status of the hosting device and associated auxiliary devices.")
* [Cross-Origin Resource Sharing](http://www.w3.org/TR/cors "This document defines a mechanism to enable client-side cross-origin requests. Specifications that enable an API to make cross-origin requests to resources can use the algorithms defined by this specification. If such an API is used on http://example.org resources, a resource on http://hello-world.example can opt in using the mechanism described by this specification (e.g., specifying Access-Control-Allow-Origin: http://example.org as response header), which would allow that resource to be fetched cross-origin from http://example.org.")
* [HTML Canvas 2D Context](http://www.w3.org/TR/2dcontext "This specification defines the 2D Context for the HTML canvas element. The 2D Context provides objects, methods, and properties to draw and manipulate graphics on a canvas drawing surface.")
* [HTML Media Capture](http://www.w3.org/TR/html-media-capture "This specification defines HTML form enhancements that provide access to the audio, image and video capture capabilities of the device.")
* [HTML5 Web Messaging](http://www.w3.org/TR/webmessaging "This specification defines two mechanism for communicating between browsing contexts in HTML documents.")
* [Indexed Database API](http://www.w3.org/TR/IndexedDB "This document defines APIs for a database of records holding simple values and hierarchical objects. Each record consists of a key and some value. Moreover, the database maintains indexes over records it stores. An application developer directly uses an API to locate records either by their key or by using an index. A query language can be layered on this API. An indexed database can be implemented using a persistent B-tree data structure.")
* [Pointer Events](http://www.w3.org/TR/pointerevents "This document defines events and related interfaces for handling hardware agnostic pointer input from devices like a mouse, pen, or touchscreen. For compatibility with existing mouse-based content, this specification also describes a mapping to fire DOM3 Mouse Events for pointer device types other than mouse.")
* [Proximity Events](http://www.w3.org/TR/proximity "This specification defines a means to receive events that correspond to a proximity sensor detecting the presence of a physical object. ")
* [Resource Timing](http://www.w3.org/TR/resource-timing "This specification defines an interface for web applications to access timing information related to HTML elements.")
* [Server-Sent Events](http://www.w3.org/TR/eventsource "This specification defines an API for opening an HTTP connection for receiving push notifications from a server in the form of DOM events. The API is designed such that it can be extended to work with other push notification schemes such as Push SMS.")
* [Timing Control for Script-Based Animations](http://www.w3.org/TR/animation-timing "This document defines an API web page authors can use to write script-based animations where the user agent is in control of limiting the update rate of the animation. The user agent is in a better position to determine the ideal animation rate based on whether the page is currently in a foreground or background tab, what the current load on the CPU is, and so on. Using this API should therefore result in more appropriate utilization of the CPU by the browser.")
* [Vibration API](http://www.w3.org/TR/vibration "This specification defines an API that provides access to the vibration mechanism of the hosting device. Vibration is a form of tactile feedback.")
* [Web Workers](http://www.w3.org/TR/workers "This specification defines an API that allows Web application authors to spawn background workers running scripts in parallel to their main page. This allows for thread-like operation with message-passing as the coordination mechanism.")
* [WebSocket API](http://www.w3.org/TR/websockets "This specification defines an API that enables Web pages to use the WebSocket protocol (defined by the IETF) for two-way communication with a remote host.")

Working Drafts (57 Specs)
----------------

* [Audio Processing API](http://www.w3.org/TR/audioproc "This specification introduces and compares two client-side APIs for processing and synthesizing real-time audio streams in the browser.")
* [Beacon](http://www.w3.org/TR/beacon "This specification defines an interoperable means for site developers to asynchronously transfer data from the user agent to a web server, with the user agent taking the responsibility to eventually send the data.")
* [Calendar API](http://www.w3.org/TR/calendar-api "The Calendar API defines the high-level interfaces required to obtain read access to a user's calendaring service.")
* [Clipboard API and Events](http://www.w3.org/TR/clipboard-apis "This document describes APIs for clipboard operations such as copy, cut and paste in web applications.")
* [Contacts API](http://www.w3.org/TR/contacts-api "This specification defines an API that provides access to a user's unified address book.")
* [Contacts Manager API](http://www.w3.org/TR/contacts-manager-api "This specification defines a System Level API which offers a simple interface to manage user's contacts stored in the system's address book. A typical use case of the Contacts API is the implementation of an application to manage said address book.")
* [Custom Elements](http://www.w3.org/TR/custom-elements "This specification describes the method for enabling the author to define and use new types of DOM elements in a document.")
* [DOM Parsing and Serialization](http://www.w3.org/TR/domparsing "This specification defines various APIs for programmatic access to HTML and generic XML parsers by web applications for use in parsing and serializing DOM nodes.")
* [DeviceOrientation Event Specification](http://www.w3.org/TR/orientation-event "This specification defines several new DOM event types that provide information about the physical orientation and motion of a hosting device.")
* [Encrypted Media Extensions](http://www.w3.org/TR/encrypted-media "This proposal extends HTMLMediaElement providing APIs to control playback of protected content. The API supports use cases ranging from simple clear key decryption to high value video (given an appropriate user agent implementation). License/key exchange is controlled by the application, facilitating the development of robust playback applications supporting a range of content decryption and protection technologies. This specification does not define a content protection or Digital Rights Management system. Rather, it defines a common API that may be used to discover, select and interact with such systems as well as with simpler content encryption systems. Implementation of Digital Rights Management is not required for compliance with this specification: only the simple clear key system is required to be implemented as a common baseline. The common API supports a simple set of content encryption capabilities, leaving application functions such as authentication and authorization to page authors. This is achieved by requiring content protection system-specific messaging to be mediated by the page rather than assuming out-of-band communication between the encryption system and a license or other server.")
* [File API](http://www.w3.org/TR/FileAPI "This specification provides an API for representing file objects in web applications, as well as programmatically selecting them and accessing their data.")
* [File API: Directories and System](http://www.w3.org/TR/file-system-api "This specification defines an API to navigate file system hierarchies, and defines a means by which a user agent may expose sandboxed sections of a user's local filesystem to web applications. It builds on File API: Writer, which in turn built on File API, each adding a different kind of functionality.")
* [File API: Writer](http://www.w3.org/TR/file-writer-api "This specification defines an API for writing to files from web applications. This API is designed to be used in conjunction with, and depends on definitions in, other APIs and elements on the web platform. Most relevant among these are File API and Web Workers.")
* [Fullscreen](http://www.w3.org/TR/fullscreen "Fullscreen defines the fullscreen API for the web platform.")
* [Gamepad](http://www.w3.org/TR/gamepad "The Gamepad specification defines a low-level interface that represents gamepad devices.")
* [HTML Image Description Extension](http://www.w3.org/TR/html-longdesc "This specification defines a longdesc attribute to link extended descriptions with images in HTML5-based content.")
* [HTML Imports](http://www.w3.org/TR/html-imports "HTML Imports are a way to include and reuse HTML documents in other HTML documents.")
* [HTML Templates](http://www.w3.org/TR/html-templates "This specification describes a method for declaring inert DOM subtrees in HTML and manipulating them to instantiate document fragments with identical contents.")
* [IndieUI: Events 1.0](http://www.w3.org/TR/ime-api "IndieUI: Events 1.0 is an abstraction between physical, device-specific user interaction events and inferred user intent such as scrolling or changing values. This provides an intermediate layer between device- and modality-specific user interaction events, and the basic user interface functionality used by web applications. IndieUI: Events focuses on granular user interface interactions such as scrolling the view, canceling an action, changing the value of a user input widget, selecting a range, placing focus on an object, etc. Implementing platforms will combine modality-specific user input, user idiosyncratic heuristics to determine the specific corresponding Indie UI event, and send that to the web application in addition to the modality-specific input such as mouse or keyboard events, should applications wish to process it.")
* [Input Method Editor API](http://www.w3.org/TR/indie-ui-events "This specification defines an ”IME API” that provides Web applications with scripted access to an IME (input-method editor) associated with a hosting user agent. This IME API includes: an InputMethodContext interface, which provides methods to retrieve detailed data from an in-progress IME composition; and a Composition dictionary, which represents read-only attributes about the current composition, such as the actual text and its style. This API is designed to be used in conjunction with DOM events.")
* [Media Source Extensions](http://www.w3.org/TR/media-source "This specification extends HTMLMediaElement to allow JavaScript to generate media streams for playback. Allowing JavaScript to generate streams facilitates a variety of use cases like adaptive streaming and time shifting live streams. ")
* [MediaStream Recording](http://www.w3.org/TR/mediastream-recording "This document defines a recording API for use with MediaStreams as defined in Media Capture and Streams.")
* [Mediastream Image Capture](http://www.w3.org/TR/image-capture "This document specifies the takePhoto() and getFrame() methods, and corresponding camera settings for use with MediaStreams as defined in Media Capture and Streams.")
* [Messaging API](http://www.w3.org/TR/messaging "This specification defines a System Level API which offers a simple interface to get access to mobile messaging services. A typical use case of the Messaging API is the implementation of a messaging client application that allows the user to send SMS and MMS messages as well as to access and manage the received SMS and MMS messages.")
* [Navigation Timing 2](http://www.w3.org/TR/navigation-timing-2 "This specification defines a unified interface to store and retrieve high resolution performance metric data related to the navigation of a document.")
* [Network Information API](http://www.w3.org/TR/netinfo-api "The Network Information API provides an interface for Web Applications to access the underlying network information (connection info) of the device.")
* [Network Service Discovery](http://www.w3.org/TR/discovery-api "This specification defines a mechanism for an HTML document to discover and subsequently communicate with HTTP-based services advertised via common discovery protocols within the current network.")
* [Pick Media Intent](http://www.w3.org/TR/gallery "The Pick Media Intent defines a Web Intent that enables access to a user's media gallery from inside a Web application. It defines both an Intent action/type pair that selects this operation, and the format of the media data that is returned by services implementing this specification. ")
* [Pointer Lock](http://www.w3.org/TR/pointerlock "This specification defines an API that provides scripted access to raw mouse movement data while locking the target of mouse events to a single element and removing the cursor from view. This is an essential input mode for certain classes of applications, especially first person perspective 3D applications and 3D modelling software.")
* [Push API](http://www.w3.org/TR/push-api "This specification defines a ”Push API” that provides webapps with scripted access to server-sent notifications, for simplicity referred to here as push notifications, as delivered by push services. Push services are a way for application servers to send messages to webapps, whether or not the webapp is active in a browser window. Push notifications may be delivered via various methods, either via standardized protocols (e.g. Server-Sent Events, the GSM Short Message Service, SIP MESSAGE, or OMA Push), or via browser-specific methods. The specific method to be used by a webapp is either selected by the user through a push service extension, or by the browser. The Push API is defined to promote compatibility with any delivery method.")
* [Quota Management API](http://www.w3.org/TR/quota-api "This specification defines an API to manage usage and availability of local storage resources, and defines a means by which a user agent (UA) may grant Web applications permission to use more local space, temporarily or persistently, via various different storage APIs.")
* [Raw Sockets](http://www.w3.org/TR/raw-sockets "This API provides interfaces to raw UDP sockets, TCP client sockets and TCP server sockets.")
* [Resource Priorities](http://www.w3.org/TR/resource-priorities "This specification defines a means for site developers to programmatically give the User Agent hints on the download priority of a resource. This will allow User Agents to more efficiently manage the order in which resources are downloaded.")
* [Runtime and Security Model for Web Applications](http://www.w3.org/TR/runtime "This document specifies a runtime and security model for Web Applications. It describes how an application is defined through an application manifest, and how it can be installed, updated and packaged. It also specifies how such an application can be put into the background, be put back in the foreground or woken up. Finally, the document describes the security model for such applications. This includes the permission model and the different security rules that would apply.")
* [Screen Orientation API](http://www.w3.org/TR/screen-orientation "The Screen Orientation API's goal is to provide an interface for web applications to be able to read the screen orientation state, to be informed when this state changes and to be able to lock the screen orientation to a specific state.")
* [Selectors API Level 1](http://www.w3.org/TR/selectors-api "The Selectors API specification defines methods for retrieving Element nodes from the DOM by matching against a group of selectors.")
* [Selectors API Level 2](http://www.w3.org/TR/selectors-api2 "The Selectors API specification defines methods for retrieving element nodes from the DOM by matching against a group of selectors, and for testing if a given element matches a particular selector.")
* [Shadow DOM](http://www.w3.org/TR/shadow-dom "This specification describes a method of establishing and maintaining functional boundaries between DOM trees and how these trees interact with each other within a document, thus enabling better functional encapsulation within the DOM.")
* [Streams API](http://www.w3.org/TR/streams-api "This specification provides an API for representing binary data in web applications as a Stream object, as well as programmatically building and reading its contents. This includes: A Stream interface, which represents a sequence of data that can be read over time; A StreamReader interface, which provides methods to read the contents of a Stream as a Blob, DataURL, ArrayBuffer, or as Text; A StreamBuilder interface, which allows for creating a new Stream whose contents is read from an internal buffer that was made by appending Text, Blobs, or ArrayBuffers; Extensions to XmlHttpRequest to add support for upload and download of a Stream; Extensions to createObjectURL and revokeObjectURL to add support for Stream. Additionally, this specification defines objects to be used within threaded web applications for the synchronous reading of a Stream. This API is designed to be used in conjunction with other APIs and elements on the web platform, notably: File, XMLHttpRequest (e.g. with an overloaded send() method and response object for Stream objects), postMessage, and Web Workers.")
* [The Messaging API](http://www.w3.org/TR/messaging-api "This specification defines an API that provides access to messaging functionality in the device, including SMS, MMS and email.")
* [The app: URI scheme](http://www.w3.org/TR/app-uri "This specification defines the app: URI scheme and rules for dereferencing an app: URI, which can be used to address resources inside a package (e.g., a packaged application). The dereferencing model relies on HTTP semantics to return resources in a manner akin to a HTTP GET request. Doing so allows this URI scheme to be used with other technologies that rely on HTTP responses to function as intended, such as XmlHttpRequest.")
* [The picture Element](http://www.w3.org/TR/html-picture-element "The picture element is an image container whose source content is determined by one or more CSS media queries.")
* [The srcset Attribute](http://www.w3.org/TR/html-srcset "When authors adapt their sites for high-resolution displays, they often need to be able to use different assets representing the same image. We address this need for adaptive, bitmapped content images by adding a srcset attribute to the img element.")
* [URL](http://www.w3.org/TR/url "This specification defines the term URL, various algorithms for dealing with URLs, and an API for constructing, parsing, and resolving URLs.")
* [Web Alarms API Specification](http://www.w3.org/TR/web-alarms "This specification defines a System Level API to provide access to the device alarm settings, which can schedule a notification or for an application to be started at a specific time. For example, some applications like alarm-clock, calendar or auto-update might need to utilize Alarm API to trigger particular device behaviors at specified time points.")
* [Web Animations 1.0](http://www.w3.org/TR/web-animations "This specification defines a model for synchronization and timing of changes to the presentation of a Web page. This specification also defines an application programming interface for interacting with this model and it is expected that further specifications will define declarative means for exposing these features.")
* [Web Audio API](http://www.w3.org/TR/webaudio "This specification describes a high-level JavaScript API for processing and synthesizing audio in web applications. The primary paradigm is of an audio routing graph, where a number of AudioNode objects are connected together to define the overall audio rendering. The actual processing will primarily take place in the underlying implementation (typically optimized Assembly/C/C++ code), but direct JavaScript processing and synthesis is also supported. This API is designed to be used in conjunction with other APIs and elements on the web platform, notably: XMLHttpRequest (using the responseType and response attributes). For games and interactive applications, it is anticipated to be used with the canvas 2D and WebGL 3D graphics APIs.")
* [Web Cryptography API](http://www.w3.org/TR/WebCryptoAPI "This specification describes a JavaScript API for performing basic cryptographic operations in web applications, such as hashing, signature generation and verification, and encryption and decryption. Additionally, it describes an API for applications to generate and/or manage the keying material necessary to perform these operations. Uses for this API range from user or service authentication, document or code signing, and the confidentiality and integrity of communications.")
* [Web Intents Addendum — Local Services](http://www.w3.org/TR/webintents-local-services "This specification is an addendum to Web Intents, that defines how Web Intents enabled User Agents can discover and communicate with local Web Intents Services.")
* [Web MIDI API](http://www.w3.org/TR/webmidi " Some user agents have connected music devices, such as synthesizers, keyboard and other controllers, and drum machines. The widely adopted Musical Instrument Digital Interface (MIDI) protocol enables electronic musical instruments, controllers and computers to communicate and synchronize with each other. MIDI does not transmit audio signals: instead, it sends event messages about musical notes, controller signals for parameters such as volume, vibrato and panning, cues and clock signals to set the tempo, and system-specific MIDI communications (e.g. to remotely store synthesizer-specific patch data). This same protocol has become a standard for non-musical uses, such as show control, lighting and special effects control. This specification defines an API supporting the MIDI protocol, enabling web applications to enumerate and select MIDI input and output devices on the client system and send and receive MIDI messages. It is intended to enable non-music MIDI applications as well as music ones, by providing low-level access to the MIDI devices available on the users' systems. At the same time, the Web MIDI API is not intended to become a semantic controller platform; it is designed to expose the mechanics of MIDI input and output interfaces, and the practical aspects of sending and receiving MIDI messages, without identifying what those actions might mean semantically. To some users, ”MIDI” has become synonymous with Standard MIDI Files and General MIDI. That is not the intent of this API; the use case of simply playing back a .SMF file is not within the purview of this specification (it could be considered a different format to be supported by the HTML5 <audio> element, for example). The Web MIDI API is intended to enable direct access to devices that respond to MIDI - external synthesizers or lighting systems, for example, or even the software synthesizers that are built in to many common operating systems. The Web MIDI API is also explicitly designed to enable a new class of applications on the web that can respond to MIDI controller inputs - using external hardware controllers with physical buttons, knobs and sliders (as well as musical controllers like keyboard, guitar or wind instrument controllers) to control web applications. The Web MIDI API is also expected to be used in conjunction with other APIs and elements of the web platform, notably the Web Audio API and High-Resolution Time. This API is also intended to be familiar to users of MIDI APIs on other systems, such as Apple's CoreMIDI and Microsoft's Windows MIDI API.")
* [Web Notifications](http://www.w3.org/TR/notifications "This document defines an API for displaying simple notifications to the user.")
* [Web Telephony API](http://www.w3.org/TR/telephony "This specification defines an API to manage telephone calls. A typical use case of the Web Telephony API is the implementation of a 'Dialer' application supporting multiparty calls and multiple telephony services. A minimal structure for call history items is also defined.")
* [WebCrypto Key Discovery](http://www.w3.org/TR/webcrypto-key-discovery "This specification describes a JavaScript API for discovering named, origin-specific pre-provisioned cryptographic keys for use with the Web Cryptography API. Pre-provisioned keys are keys which have been made available to the UA by means other than the generation, derivation, imporation functions of the Web Cryptography API. Origin-specific keys are keys that are available only to a specified origin. Named keys are identified by a name assumed to be known to the origin in question and provisioned with the key itself.")
* [WebDriver](http://www.w3.org/TR/webdriver "This specification defines the WebDriver API, a platform-and language-neutral interface that allows programs or scripts to introspect into, and control the behaviour of, a web browser. The WebDriver API is primarily intended to allow developers to write tests that automate a browser from a separate controlling process, but may also be implemented in such a way as to allow in-browser scripts to control a browser. The WebDriver API is defined by a set of interfaces to discover and manipulate DOM elements on a page, and to control the behaviour of the containing browser. This specification also includes a non-normative reference useful for browser vendors.")
* [WebRTC 1.0: Real-time Communication Between Browsers](http://www.w3.org/TR/webrtc "This document defines a set of ECMAScript APIs in WebIDL to allow media to be sent over the network to another browser or device implementing the appropriate set of real-time protocols, and media to be received from another browser or device. This specification is being developed in conjunction with a protocol specification developed by the IETF RTCWEB group and an API specification to get access to local media devices developed by the Media Capture Task Force.")
* [XMLHttpRequest](http://www.w3.org/TR/XMLHttpRequest "The XMLHttpRequest specification defines an API that provides scripted client functionality for transferring data between a client and a server.")
* [XMLHttpRequest Level 2](http://www.w3.org/TR/XMLHttpRequest2 "The XMLHttpRequest Level 2 specification enhances the XMLHttpRequest object with new features, such as cross-origin requests, progress events, and the handling of byte streams for both sending and receiving.")

Notes (7 Specs)
----------------

* [HTML Microdata](http://www.w3.org/TR/microdata "This specification defines the HTML microdata mechanism. This mechanism allows machine-readable data to be embedded in HTML documents in an easy-to-write manner, with an unambiguous parsing model. It is compatible with numerous other data formats including RDF and JSON.")
* [Media Capture API](http://www.w3.org/TR/media-capture-api "This specification defines an Application Programming Interface (API) that provides access to the audio, image and video capture capabilities of the device.")
* [MediaStream Processing API](http://www.w3.org/TR/streamproc "A number of existing or proposed features for the Web platform deal with continuous real-time media: HTML media elements, Synchronization of multiple HTML media elements (e.g. proposed HTML MediaController), Capture and recording of local audio and video input (e.g. proposed HTML Streams), Peer-to-peer streaming of audio and video streams (e.g. proposed WebRTC and HTML Streams), and Advanced audio APIs that allow complex mixing and effects processing (e.g. Mozilla's AudioData, Chrome's AudioNode). Many use-cases require these features to work together. This proposal makes HTML Streams the foundation for integrated Web media processing by creating a mixing and effects processing API for HTML Streams.")
* [Programmable HTTP Caching and Serving](http://www.w3.org/TR/DataCache "This document defines APIs for off-line serving of requests to HTTP resources using static and dynamic responses. It extends the function of application caches defined in HTML5.")
* [Touch Events Extensions](http://www.w3.org/TR/touch-events-extensions "This document defines extensions to the Touch Events specification that have been implemented by one or more browsers. We recommend that user agents implement the Touch Events Recommendation and/or the newer Pointer Events specification instead. This document is no longer being developed.")
* [Web Intents](http://www.w3.org/TR/web-intents "This specification defines a service discovery and light-weight RPC mechanism for web apps called Web Intents. This document defines DOM interfaces and markup used by client and service pages to create, receive, and reply to Web Intents messages, and the procedures the User Agent carries out to facilitate that process.")
* [Web SQL Database](http://www.w3.org/TR/webdatabase "This specification defines an API for storing data in databases that can be queried using a variant of SQL.")


If you're interested in history, [here's the change log](history.md).
# Page Life Cycle in ASP.NET
- In ASP.NET, page lifecycle includes various phases. These phases include initialization, instantiation, restoring and maintaining state running event handler code, and rendering. ASP.NET page life cycle is very important to understand to every developer to develop an application. All events, data processing, postback, rendering etc depends on page life cycle.
![PageLifeCycle](https://user-images.githubusercontent.com/56407906/131242878-c52fc7ce-aa53-43fa-9006-3a4bf4e745db.PNG)

| Stages | Descriptions | 
| ------------ | ---------- | 
| Page request  |  When ASP.NET gets a page request, it decides whether to parse and compile the page, or there would be a cached version of the page; accordingly the response is sent. | 
| Starting of page life cycle |  At this stage, the Request and Response objects are set. If the request is an old request or post back, the IsPostBack property of the page is set to true. The UICulture property of the page is also set.| 
| Page initialzation  |  At this stage, the controls on the page are assigned unique ID by setting the UniqueID property and the themes are applied. For a new request, postback data is loaded and the control properties are restored to the view-state values.| 
| Page load  |  At this stage, control properties are set using the view state and control state values. |
| Postback event handling  |  If the request is a postback (old request), the related event handler is invoked. | 
| Page rendering  |  At this stage, view state for the page and all controls are saved. The page calls the Render method for each control and the output of rendering is written to the OutputStream class of the Response property of page. | 
| Unload  |  The rendered page is sent to the client and page properties, such as Response and Request, are unloaded and all cleanup done.|

# ASP.NET Page Life Cycle Events:
- ASP.NET provides methods and events at each stage of the page lifecycle that we can use in our application. ASP.NET pages support the automatic wire-up event, which means it looks for methods with particular names and automatically runs those methods when particular events are raised.
- For control events, you bind the event handler to the event, either declaratively using attributes such as onclick, or in code.


| Events                  | Description                                                    |
| ------------------------- | ------------------------------------------------------------ |
| PreInit          |  PreInit is the first event in ASP.NET page life cycle. This event is taking the start stage is complete and before the initialization stage. This event is used to set the Theme property dynamically.                               |
| Init     |  This event raised once all controls have been initialized. The use of this event is to read or initialize control properties. It helps to build up a tree of controls from the ASPX file.                                  |
| InitComplete                          |  This event takes at the end of the page’s initialization stage. In this event tracking of view state changes is turned on, until view state tracking is turned on, any values added to view state are lost across postbacks.|
| PreLoad |  The PreLoad event is used for performing the page processing on the page before the control is loaded. We can process any kind of operation that needs to perform before page load.                                |
| Load |  OnLoad methods controls called for each and every controls. Using this method we can set the control properties.                                   |
| ControlEvents |  Use these events to handle specific control events, such as a Button control’s Click event.                               |
| LoadComplete |  This event can be handled by overloading the OnLoadComplete method. This event is used for tasks that require that all other controls on the page be loaded.                                    |
| PreRender |  Each control of the page has a PreRender event which is being invoked. If we want to change anything to any control this is the last event where we can do because after that PageRender starts.                              |
|  PreRenderComplete | The PreRender event is fired for the child controls.                            |
| SaveStateComplete |  In this event, any changes to the page or controls affect rendering, but the changes will not be retrieved on the next postback.                                   |
| Render |  Pages call the Render method for each and every control. The Render method generates the client-side HTML and a script which is necessary to properly display a control over the browser.                                |
| Unload|  Unload event occurs at last in the ASP.NET page lifecycle. Unload event used to do a cleanup task like the closing of the open files, closing the database connections, or other requested specific tasks.    

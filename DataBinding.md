# Data Binding in Asp.Net
- Data Binding is binding controls to data from databases. With data binding we can bind a control to a particular column in a table from the database or we can bind the whole table to the data grid.
- Simple data binding involves attaching any item  which implements the  DataSet and DataTable classes to the DataSource property of the control.
- DataSet : It is a collection of data tables that contain the data.
- DataTable : DataTable represents relational data into tabular form.

### Various Data Bound Controls Used in ASP.Net
- GridView
- Repeater
- DataList
- ListView

### 1) GridView
- The GridView control is used to display the values of a data source in a table.
- Each column represents a field where each row represents a record. It can also display empty data. 
- GridView control provides many built-in capabilities that allow the user to sort and pageing through items in the control. 
- Customizable appearance through themes and styles.

### 2) Repeater 
- Repeater is a basic container control that allows you to create custom lists from any data available to the page. 
- The Repeater control is used to display a repeated list of items that are bound to the control.
- no built-in support for paging, sorting and grouping capabilities
- no built-in support for edit, insert and delete capabilities

### 3) DataList
- The DataList control renders data as a table and enables you to display data records in various layouts, such as ordering them in columns or rows.
- It arranges the data defined in the template within various HTML structures. This includes options for horizontal or vertical layout and it also allows you to set how the data should be repeated, as flow or table layout.

### 4) ListView
- The ListView control resembles the GridView control. The only difference between them is that the ListView control displays data using user-defined templates instead of row fields. 
- Creating your own templates gives you more flexibility in controlling how the data is displayed.
- Support for paging capabilities using a DataPager control.
- Built-in insert, edit and delete capabilities.

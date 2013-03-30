ETF Net Asset Values from CSV
================================

So this has been running through my mind ever since last weekend weekend. Looking at the spreadsheet there are 42 columns
in total (I'm not going to list them here). Thinking about the structure from a bird's eye view (I'm sort of 'writing out
loud' here), I think the simplest implementation revolves around three basic tables:


#### ETFs: An ETF is a *type of* security
#### Stocks: A Stock is a *type of* security
#### Components: Defines attributes which define the relationship between ETF and stock (weighting, etc...)

####Assumptions:
ETFs and Stocks have an interesting relationship. An ETF can have many stocks, and a stock can belong to many ETFs. The
relationship between them is itself an entity that is described by component (An etf has many stocks through component and vice-versa).

### ETF:
  1. Sponsor
  2. Composite Ticker
  4. Composite Name
  5. Total Shares
  7. Market Value
  8. Currency
  9. Shares outstanding
  10. etc...

### Stock:
  1. Sponsor
  2. Composite Ticker
  4. Composite Name
  5. Total Shares
  7. Market Value
  8. Currency
  9. Shares outstanding
  10. etc...

### Component:
  1. Weighting
  2. Constituent Ticker
  3. Constituent Name
  4. Identifier
  5. etc...


---

### A few questions...
  - What attributes for the ETF/Stock/Component are unique? Ticker, name, etc....
  - Are mappings between columns in CSV and DB columns bijective?

### Important Files:
 (CSV files go in lib/assets)
 <pre>/lib/assets</pre> 
 CSV Parsing:
 <pre>/lib/tasks</pre>
 DB Schema:
 <pre>/db/schema.rb</pre>
 Tests:
  <pre>/spec</pre>

---

#### Getting started:
```bundle && rake db:migrate```

##### Importing CSV files to database:
```rake csv:import```

##### Populating DB with default ETF:
```rake db:seed```

##### Running the tests:
```rake db:seed```
----

There are also a lot of shared attributes here between columns so down the line it may be beneficial to think about
these relationships in terms of a common object through single inheritance (ETFs Stocks and bonds are all a type of security).

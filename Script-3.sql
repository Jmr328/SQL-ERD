CREATE TABLE "Customer" (
  "Customer_id" SERIAL,
  "Movie_id" Integer,
  "Ticket_id" Integer,
  "Order_id" Integer,
  PRIMARY KEY ("Customer_id")
);

CREATE TABLE "Tickets" (
  "Ticket_id" SERIAL,
  "Customer_id" SERIAL,
  "Movie_id" Integer,
  "Ticket_cost" NUMERIC(3,2),
  PRIMARY KEY ("Ticket_id"),
  CONSTRAINT "FK_Tickets.Ticket_id"
  FOREIGN KEY ("Ticket_id")
  REFERENCES "Customer"("Customer_id")
);

CREATE TABLE "Concession" (
  "Order_id" SERIAL,
  "Order_date" DATE default CURRENT_DATE,
  "Sub_total" NUMERIC(4,2),
  "Total_cost" NUMERIC(5,2),
  PRIMARY KEY ("Order_id")
);

CREATE TABLE "Movies" (
  "Movie_id" SERIAL,
  "Movie_name" VARCHAR(100),
  "Prod_company" VARCHAR(100),
  PRIMARY KEY ("Movie_id")
);

CREATE TABLE "Producers" (
  "Prod_company" SERIAL,
  "Genre" VARCHAR(50),
  PRIMARY KEY ("Prod_company")
);

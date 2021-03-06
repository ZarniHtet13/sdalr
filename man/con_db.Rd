% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/con_db.R
\name{con_db}
\alias{con_db}
\title{Makes a connection to a database.}
\usage{
con_db(dbname, user, driver = "PostgreSQL", host = "postgresql",
  port = 5432, close_existing_cons = TRUE, pass = NULL)
}
\arguments{
\item{dbname}{the name of the database you want to connect to}

\item{user}{the username for the database connection}

\item{driver}{the database driver to use, defaults to 'PostgreSQL'}

\item{host}{where the database is running, defaults to 'postgresql'}

\item{port}{the port where the database in running, defaults to '5432' for PostgreSQL}

\item{close_existing_cons}{whether to close existing database connections, defaults to 'TRUE'}

\item{pass}{optional. directly pass a password to the database without rstudio password prompt}
}
\value{
database connection
}
\description{
Creates a connection to a database.
This function is really a high-level function that calls the corresponding
\code{con_db} function for a particular database driver.
}
\examples{
con_db('sample_db', 'dan', 'isawesome')

\dontrun{
con <- sdalr::con_db(dbname = 'arlington', user = 'chend')
df <- DBI::dbGetQuery(con, "SELECT * FROM fire.medic_unit_movement_summary_2013")
head(df)
}
}

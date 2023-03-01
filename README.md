# Instalation

1. first run `composer install`
2. import database from sql file in `sql_query/database.sql`
3. setting database configuration in `.env file` 
4. run `php artisan serve` to run the server
5. open `http://127.0.0.1:8000/graphiql` to open graphql API playground


# API Documentation
Access API served at `http://127.0.0.1:8000/api` endpoint
## Query to get data
```
brand(
id: ID
name: String
): Brand

brands(
first: Int = 10
name: String
page: Int
): BrandPaginator

outlet(
id: ID
name: String
): Outlet

outlets(
first: Int = 10
name: String
page: Int
): OutletPaginator

product(
id: ID
name: String
): Product

products(
first: Int = 10
name: String
page: Int
): ProductPaginator
```

## Mutation to modify data
```
createBrand(
banner: String!
logo: String!
name: String!
): Brand!

updateBrand(
banner: String
id: ID!
logo: String
name: String
): Brand!

deleteBrand(id: ID!): User

createOutlet(
address: String!
brand_id: String!
latitude: String!
longitude: String!
name: String!
picture: String!
): Outlet!

updateOutlet(
address: String
brand_id: String
id: ID!
latitude: String
longitude: String
name: String
picture: String
): Outlet!

deleteOutlet(id: ID!): Outlet

createProduct(
brand_id: String!
name: String!
picture: String!
price: String!
): Product!

updateProduct(
brand_id: String
id: ID!
name: String
picture: String
price: String
): Product!

deleteProduct(id: ID!): Product
```

# The Query file
SQL query to display data below saved in `sql_query` folder
- Brand name
- Outlet name, address, longitude, latitude
- Total product
- Distance Outlet position from Monas Jakarta in Kilometers

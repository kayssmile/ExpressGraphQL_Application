/*  GraphQL Backend Application
--------------------------------------------------------------*/
/* Application : Dependencies                                                                                                                                                                         Head Heart Web <3 Consult your WebDoc about Middleware, Margin and Padding 
-------------------------------------------------------------- */

import express from 'express';
import { ApolloServer, gql} from 'apollo-server-express';
import cors from 'cors';
import mysql from 'mysql2/promise';

/* Data base Connection                                                                                                                                                                       Head Heart Web <3 Consult your WebDoc about Middleware, Margin and Padding 
-------------------------------------------------------------- */

const connection = await mysql.createConnection({
    host: "sql11.freemysqlhosting.net",
    user: "sql11450647",
    password: "xlGxLvQIde",
    database: "sql11450647"
});

/* GraphQL Queries                                                                                                                                                                      Head Heart Web <3 Consult your WebDoc about Middleware, Margin and Padding 
-------------------------------------------------------------- */

const typeDefs = gql`

    type Query {
        estates: [estates]!
    }

    type estates{
        id: Int!
        title: String!
        description: String!
        country: String!
        canton: String!
        city: String!
        zip: Int!
        availability: String!
        prize: Int!
        estate_type: String!
        lat: Float!
        long: Float!
        usable_area: Int!
        ref_type_id: Int!
        created_at: String!
        updated_at: String!
        img: String!
        img1: String!
        img2: String!
        img3: String!
    }

`;

/* GraphQL Resolver                                                                                                                                                                     Head Heart Web <3 Consult your WebDoc about Middleware, Margin and Padding 
-------------------------------------------------------------- */

const resolvers = {
        Query: {
        estates: async (obj, args, context, info) => {
            let [result] = await context.db.execute(`
            SELECT * FROM estates`);
            return result;
        },
    }
};

/* Server Init / Start                                                                                                                                                                      Head Heart Web <3 Consult your WebDoc about Middleware, Margin and Padding 
-------------------------------------------------------------- */

const server = new ApolloServer({
    typeDefs,
    resolvers,
    context: {
      db: connection
    }
});

await server.start();
   
const app = express();
app.use(cors()); // Erlaubt CORS Requests
server.applyMiddleware({ app });
  
app.listen({ port: parseInt(process.env.PORT || 4000 ) }, () => {
    console.log(`🚀 Server ready at https://backend-appli.herokuapp.com/graphql`);
});
   

/* Server Shut-down                                                                                                                                                                      Head Heart Web <3 Consult your WebDoc about Middleware, Margin and Padding 
-------------------------------------------------------------- */

const shutdownHandler = () => {
    console.log('closing all connections...');
    server.close(() => {
      connection.destroy();
      console.log('shutting down...');
      process.exit();
    });
   };
process.on('SIGINT', shutdownHandler);
process.on('SIGTERM', shutdownHandler);
   
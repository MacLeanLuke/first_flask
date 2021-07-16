# import the function that will return an instance of a connection
from flask_app.config.mysqlconnection import connectToMySQL
# model the class after the friend table from our database
class Friend:
    def __init__( self , data ):
        self.id = data['id']
        self.first_name = data['first_name']
        self.occupation = data['occupation']
        self.created_at = data['created_at']
        self.updated_at = data['updated_at']
    # Now we use class methods to query our database
    @classmethod
    def get_all(cls):
        query = "SELECT * FROM friends;"
        # make sure to call the connectToMySQL function with the schema you are targeting.
        results = connectToMySQL('first_flaskdb').query_db(query)
        # Create an empty list to append our instances of friends
        friends = []
        # Iterate over the db results and create instances of friends with cls.
        for friend in results:
            friends.append( cls(friend) )
            
        return friends

    @classmethod
    def create_friend(cls, data):
        query = "INSERT INTO friends (first_name, occupation) VALUES (%(first_name)s, %(occupation)s);"

        new_friend_id = connectToMySQL('first_flaskdb').query_db(query,data)

        return new_friend_id
            
    @classmethod
    def delete_friend(cls, data):

        query = "DELETE FROM friends WHERE id = %(id)s;"

        connectToMySQL('first_flaskdb').query_db(query, data)
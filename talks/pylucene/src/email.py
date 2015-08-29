from PyLucene import Document, Field
from time import strptime, strftime

class EmailDoc( Document ):

    def __init__( self, msg ):
        Document.__init__( self )

        sender = msg.getheader('From')
        self.add( Field.Text( 'from', sender ) )

        subject = msg.getheader( 'Subject' )
        self.add( Field.Text( 'subject', subject ) )

        body = msg.fp.read()
        self.add( Field.Text( 'body', body ) )

        id = msg.getheader('Message-ID')
        self.add( Field.Keyword( 'id', id ) )

        date = strftime( '%Y%m%d%H%M%S', strptime(msg.getheader('Date')) )
        self.add( Field.Keyword( 'date', date ) )

        self.add( Field.Text( 'all', sender + subject + body ) )



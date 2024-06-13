access(all) contract BookLibraryContract {
    pub var library: BookCollection

    pub struct BookCollection {

        //
        // 4 Variables
        //

        pub(set) var title: String

        pub var author: String

        access(contract) var isbn: String

        access(self) var publisher: String

        //
        // 3 Functions
        //

        pub fun displayBookInfo() {}

        access(contract) fun catalogBook() {}

        access(self) fun editPublisher() {}

        pub fun collectionFunc() {
            /**************/
            /*** AREA 1 ***/
            /**************/
        }

        init() {
            self.title = "Default Title"
            self.author = "Unknown Author"
            self.isbn = "000-0000000000"
            self.publisher = "Unknown Publisher"
        }
    }

    pub resource BookResource {
        pub var copiesAvailable: Int

        pub fun manageCopies() {
            /**************/
            /*** AREA 2 ***/
            /**************/
        }

        init() {
            self.copiesAvailable = 5
        }
    }

    pub fun createBookResource(): @BookResource {
        return <- create BookResource()
    }

    pub fun manageLibrary() {
        /**************/
        /*** AREA 3 ****/
        /**************/
    }

    init() {
        self.library = BookCollection()
    }
}

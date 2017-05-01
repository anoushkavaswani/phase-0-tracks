vacation = {
        meals: [
        	"breakfast", 
        	"lunch", 
        	"dinner"
        ],
        flights: {
            united: "8PM",
            southwest: "8AM"
        },
        countries: [
            "spain", 
            "italy",
            "portugal"
        ]
    }

puts vacation[:countries][2]
puts vacation[:flights][:southwest]

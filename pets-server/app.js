const express = require('express')
const cors = require('cors')
const app = express()

app.use(cors())

const pets = [
    {
        petId: 1,
        imageUrl: 'https://images.unsplash.com/photo-1589883661923-6476cb0ae9f2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2574&q=80',
        description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
        rating: 5

    },
    {
        petId: 2,
        imageUrl: 'https://images.unsplash.com/photo-1596854407944-bf87f6fdd49e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1160&q=80',
        description: 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
        rating: 4
    },
    {
        petId: 3,
        imageUrl: 'https://images.unsplash.com/photo-1529257414772-1960b7bea4eb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
        description: 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
        rating: 3
    },
    {
        petId: 4,
        imageUrl: 'https://images.unsplash.com/photo-1533743983669-94fa5c4338ec?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1392&q=80',
        description: 'All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. ',
        rating: 2
    }
]

// pet-detail/:petId 
// pet-detail/2
// pet-detail/4

app.get('/pet-detail/:petId', (req, res) => {

    const petId = parseInt(req.params.petId)
    const pet = pets.find(pet => pet.petId == petId)

    const model = {
        pageTitle: 'Pet Detail',
        components: [
            {
                type: 'featuredImage',
                data: {
                    imageUrl: pet.imageUrl
                }
            },
            {
                type: 'textRow',
                data: {
                    text: pet.description
                }
            },
            {
                type: 'ratingRow',
                data: {
                    rating: pet.rating
                }
            }
        ]
    }

    res.json(model)

})

// /pet-listing 
app.get('/pet-listing', (req, res) => {

    const model = {
        pageTitle: 'Pets',
        components: [
            {
                type: "featuredImage",
                data: {
                    imageUrl: "https://images.unsplash.com/photo-1517331156700-3c241d2b4d83?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1468&q=80"
                }
            },
            {
                type: "carousel",
                data: {
                    items: pets.map(pet => {
                        return {
                            petId: pet.petId,
                            imageUrl: pet.imageUrl
                        }
                    }),
                    action: {
                        type: "sheet",
                        destination: "petDetail"
                    }
                },

            },
            {
                type: "list",
                data: {
                    // rows: pets, 
                    rows: [
                        {
                            id: 1,
                            title: "Fluffy",
                            subTitle: "This is a great pet!",
                            imageUrl: "https://images.unsplash.com/photo-1533743983669-94fa5c4338ec?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1392&q=80",
                            description: "It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with"
                        },
                        {
                            id: 2,
                            title: "Barnie",
                            imageUrl: 'https://images.unsplash.com/photo-1529257414772-1960b7bea4eb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
                            description: 'This is good pet. Lovely and beautiful. It is 3 years old and has very sharp teeth. It like milk and bread and roaming out in the park.'
                        }

                    ],
                    action: {
                        type: "push",
                        destination: "petDetail"
                    }
                }
            },
            {
            type: "grid", 
            data: {
                text: "Hello I am grid component"
            }
        }

        ]
    }

    res.json(model)
})

// //localhost:3000
// app.get('/', (req, res) => {
//     res.json({message: 'Hello World'})
// })

app.listen(3000, () => {
    console.log('Server is running...')
})

// app.listen(8080, () => {
//     console.log('Server is running...')
// })
import { News } from "@/infraestructrure/interfaces/news.interface";

export const newsFakeData: News[] = [
    {
        id: 1,
        title: "NASA's Perseverance Rover Begins 'Mission 2' on Mars",
        content: "NASA's Perseverance rover has started its second science campaign on Mars, collecting samples from the Jezero Crater.",
        imageUrl: "https://picsum.photos/200",
        publishedDate: new Date('2023-01-01')
    },
    {
        id: 2,
        title: "Global Climate Strike: Millions Demand Action",
        content: "Millions of people around the world took to the streets to demand urgent action on climate change.",
        imageUrl: "https://picsum.photos/200",
        publishedDate: new Date('2023-02-01')
    },
    {
        id: 3,
        title: "Breakthrough in Alzheimer's Research",
        content: "Scientists have discovered a new treatment that shows promise in slowing the progression of Alzheimer's disease.",
        imageUrl: "https://picsum.photos/200",
        publishedDate: new Date('2023-03-01')
    },
    {
        id: 4,
        title: "Electric Cars Set to Dominate Market by 2030",
        content: "A new report predicts that electric vehicles will make up the majority of car sales by 2030.",
        imageUrl: "https://picsum.photos/200",
        publishedDate: new Date('2023-04-01')
    },
    {
        id: 5,
        title: "New Species of Dinosaur Discovered in Argentina",
        content: "Paleontologists have uncovered a new species of dinosaur in Argentina, believed to be one of the largest ever found.",
        imageUrl: "https://picsum.photos/200",
        publishedDate: new Date('2023-05-01')
    }
];

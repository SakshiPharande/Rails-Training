# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end



# # Breeds for Dogs (Category ID: 1)
# Breed.create([
#   { breed_name: 'Labrador Retriever', category_id: 1 },
#   { breed_name: 'German Shepherd', category_id: 1 },
#   { breed_name: 'Golden Retriever', category_id: 1 },
#   { breed_name: 'Bulldog', category_id: 1 },
#   { breed_name: 'Poodle', category_id: 1 }
# ])

# # Breeds for Cats (Category ID: 2)
# Breed.create([
#   { breed_name: 'Persian Cat', category_id: 2 },
#   { breed_name: 'Siamese Cat', category_id: 2 },
#   { breed_name: 'Maine Coon', category_id: 2 },
#   { breed_name: 'Bengal', category_id: 2 },
#   { breed_name: 'Sphynx Cat', category_id: 2 }
# ])

# # Breeds for Birds (Category ID: 3)
# Breed.create([
#   { breed_name: 'Parrot', category_id: 3 },
#   { breed_name: 'Canary', category_id: 3 },
#   { breed_name: 'Cockatiel', category_id: 3 },
#   { breed_name: 'Finch', category_id: 3 },
#   { breed_name: 'Macaw', category_id: 3 }
# ])

# # Seed data for pets
# Pet.create([
#   # Dogs
#   { breed_id: 1, category_id: 1, age: 3, gender: 1, temperament: 'Friendly', vaccination_status: true,
#     medical_history: 'No prior issues', status: 1, common_health_issues: 'Hip dysplasia' },
#   { breed_id: 2, category_id: 1, age: 5, gender: 0, temperament: 'Protective', vaccination_status: false,
#     medical_history: 'Recovering from surgery', status: 0, common_health_issues: 'Arthritis' },
#   { breed_id: 3, category_id: 1, age: 2, gender: 1, temperament: 'Playful', vaccination_status: true,
#     medical_history: 'No known issues', status: 1, common_health_issues: 'Ear infections' },

#   # Cats
#   { breed_id: 6, category_id: 2, age: 4, gender: 0, temperament: 'Calm', vaccination_status: true,
#     medical_history: 'Mild allergies', status: 1, common_health_issues: 'Obesity' },
#   { breed_id: 7, category_id: 2, age: 1, gender: 1, temperament: 'Curious', vaccination_status: false,
#     medical_history: 'Kitten with weak immunity', status: 0, common_health_issues: 'Feline herpesvirus' },

#   # Birds
#   { breed_id: 11, category_id: 3, age: 2, gender: 1, temperament: 'Social', vaccination_status: true,
#     medical_history: 'Recovered from feather plucking', status: 1, common_health_issues: 'Psittacosis' },
#   { breed_id: 12, category_id: 3, age: 1, gender: 0, temperament: 'Singing', vaccination_status: false,
#     medical_history: 'Minor respiratory issues', status: 1, common_health_issues: 'Avian influenza' }
# ])


# # Sample Adoption Requests
# AdoptionRequest.create([
#   {
#     pet_id: 2,
#     breed_id: 2,
#     u_id: 2,
#     adoption_date: DateTime.now + 5.days,
#     address: '456 Blue Street, Mumbai',
#     phone_no: '9988776655',
#     email: 'applicant2@example.com',
#     status: 1                   # Accepted
#   },
#   {
#     pet_id: 3,
#     breed_id: 3,
#     u_id: 1,
#     adoption_date: DateTime.now + 3.days,
#     address: '789 Sunshine Avenue, Delhi',
#     phone_no: '8765432109',
#     email: 'applicant3@example.com',
#     status: 2                   # Rejected
#   },
#   {
#     pet_id: 4,
#     breed_id: 6,
#     u_id: 2,
#     adoption_date: DateTime.now + 1.week,
#     address: '654 Lakeside View, Bangalore',
#     phone_no: '9098765432',
#     email: 'applicant4@example.com',
#     status: 0                   # Pending
#   },
#   {
#     pet_id: 5,
#     breed_id: 7,
#     u_id: 1,
#     adoption_date: DateTime.now + 10.days,
#     address: '321 Hilltop Road, Chennai',
#     phone_no: '9191919191',
#     email: 'applicant5@example.com',
#     status: 0                   # Pending
#   }
# ])


# Seed data for pet_parent_applications
# PetParentApplication.create([
#   {
#     address: '123 Pet Lover Lane, Pune',
#     phone_no: '9876543210',
#     status: 0,
#     user_id: 1,
#     pet_id: 1
#   },
#   {
#     address: '456 Pet Adoption Blvd, Mumbai',
#     phone_no: '9988776655',
#     status: 1,
#     user_id: 2,
#     pet_id: 2
#   },
#   {
#     address: '789 Happy Home St, Delhi',
#     phone_no: '8765432109',
#     status: 2,
#     user_id: 1,
#     pet_id: 3
#   }
# ])

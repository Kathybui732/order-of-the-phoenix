# Order of the Phoenix

### Background

In the Harry Potter book series, students attend Hogwarts School of Witchcraft and Wizardry to learn the ways of Witches and Wizards. Each student at the school belongs to one of four "houses": Griffindor, Hufflepuff, Ravenclaw or Slytherin.

The Order Of The Phoenix was a secret society founded by Albus Dumbledore to oppose the evil Lord Voldemort and his minions, the Death Eaters. The original Order was created in the 1970s. ... The Order disbanded but was reconvened in 1995 after Harry Potter informed Dumbledore of Lord Voldemort's return.

### Versions

Ruby 2.5.3

Rails 5.2.4.3

### Setup

- Clone this repo
- `bundle install`
- `bundle exec figaro install`
- `rails db:{create,migrate}`
- `rails s`

As a user,
When I visit "/"
And I Select "Gryffindor" from the select field
(Note: Use the existing select field)
And I click "Search For Members"
Then I should be on page "/search"
Then I should see the total number of the order of the phoenix members that belong to Gryffindor. (i.e. 21)
And I should see a list with the detailed information for the 21 members of the Order of the Phoenix for house Gryffindor.
And for each of the members I should see:
- The name of the member
- The members role (if it exists)
- The house the member belongs to
- The Patronus of the member (if it exists)

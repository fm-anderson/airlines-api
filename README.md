# Airlines API

## Overview

A simple Sinatra API that provides data on various airlines, and their alliances, allowing users to retrieve information related to US bank transfer partners, specific airlines within those alliances, and details about each airline.

**GET all transfer partners** → https://transferpartners.up.railway.app/

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

- Ruby (version 3.2.2)
- Bundler

### Installing

1. **Clone the Repository**

   ```sh
   git clone https://github.com/fm-anderson/transfer-partners-api.git
   cd transfer-partners-api
   ```

2. **Install Dependencies**

   ```sh
   bundle install
   ```

3. **Run the API Locally**

   ```sh
   bundle exec ruby app.rb
   ```

   The API should be accessible at http://localhost:4567.

## API Endpoints

`GET /alliances` Retrieves a list of all alliances.

`GET /alliances/:alliance` Retrieves details of a specific alliance.

`GET /alliances/:alliance/airlines/:airline` Retrieves details of a specific airline within an alliance.

`GET /airlines` Retrieves details of all airlines, annotated with their respective alliances.

### Example Requests

1. **To fetch details about the "one world" alliance:**

   ```sh
   GET /alliances/one-world
   ```

2. **To fetch details about "United Airlines" in the "star alliance":**

   ```sh
   GET /alliances/star-alliance/airlines/united-airlines
   ```

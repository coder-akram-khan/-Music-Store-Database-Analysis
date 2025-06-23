# 🎵 Music Store Database Analysis

A comprehensive SQL analysis project exploring a digital music store database to extract meaningful business insights and answer key business questions.
---
![image](https://github.com/coder-akram-khan/Music-Store-Database-Analysis/blob/main/sqlanalysis.png?raw=true)

## 📊 Project Overview

This project demonstrates advanced SQL querying capabilities through the analysis of a music store database. The analysis is structured across three difficulty levels, progressing from basic data retrieval to complex business intelligence queries using advanced SQL techniques.

## 🗃️ Database Schema

The project utilizes a well-structured relational database representing a digital music store with the following key entities:

### Core Tables
- **👥 Customer** - Customer information and demographics
- **💿 Artist** - Music artists and bands
- **📀 Album** - Music albums with artist relationships
- **🎵 Track** - Individual songs with album and genre associations
- **🎭 Genre** - Music genre classifications
- **📄 Invoice** - Customer purchase records
- **📋 Invoice_Line** - Detailed line items for each purchase
- **👨‍💼 Employee** - Staff information and organizational hierarchy
- **🎼 Media_Type** - Digital media format classifications
- **🎹 Playlist** - Curated music collections
- **🔗 Playlist_Track** - Many-to-many relationship between playlists and tracks

![Database ERD](https://github.com/coder-akram-khan/-Music-Store-Database-Analysis/blob/main/ERD.png?raw=true)

## 🎯 Analysis Categories

### 🟢 Easy Level Queries
*Basic data retrieval and simple aggregations*

- **Senior Employee Identification** - Finding the most senior employee by job level
- **Geographic Analysis** - Countries with the highest number of invoices
- **Revenue Insights** - Top invoice amounts and basic sales metrics

### 🟡 Intermediate Level Queries
*Multi-table joins and grouped aggregations*

- **City Revenue Analysis** - Identifying the most profitable city for promotional events
- **Customer Value Analysis** - Finding the highest-spending customers
- **Genre-Based Customer Segmentation** - Rock music listeners analysis
- **Artist Performance Metrics** - Top rock bands by track count
- **Track Duration Analysis** - Songs longer than average length

### 🔴 Advanced Level Queries
*Complex business logic with CTEs, window functions, and subqueries*

- **Customer-Artist Spending Analysis** - Detailed breakdown of customer spending by artist
- **Geographic Genre Preferences** - Most popular music genre by country
- **Top Customer by Country** - Highest spenders in each geographic region

## 🔍 Key Business Questions Answered

1. **Who is our most senior employee?**
2. **Which countries generate the most business?**
3. **Where should we host our next promotional music festival?**
4. **Who are our most valuable customers?**
5. **What are the music preferences by geographic region?**
6. **Which artists should we prioritize for partnerships?**
7. **How do customer spending patterns vary across different markets?**

## 🛠️ Technical Features

### SQL Techniques Demonstrated
- **Complex JOINs** - Multi-table relationships and data integration
- **Common Table Expressions (CTEs)** - Modular query construction
- **Window Functions** - Advanced ranking and partitioning
- **Aggregate Functions** - Statistical analysis and summarization
- **Subqueries** - Nested query logic for complex filtering
- **String Functions** - Pattern matching and text manipulation

### Query Optimization
- Efficient use of indexes through proper WHERE clauses
- Strategic use of LIMIT for performance optimization
- Grouped aggregations for statistical insights
- Sorted results for meaningful data presentation

## 📁 Project Structure

```
Music-Store-Database-Analysis/
│
├── 📄 README.md                    # Project documentation
├── 🗄️ Music_Store_database.sql     # Database schema and sample data
├── 📊 ERD.png                      # Entity Relationship Diagram
└── 🔍 analysis.sql                 # Complete SQL analysis queries
```

## 🚀 Getting Started

### Prerequisites
- SQL Database Management System (MySQL, PostgreSQL, SQLite, etc.)
- Basic understanding of SQL and relational databases

### Installation & Setup

1. **Clone the repository**
   ```bash
   git clone https://github.com/coder-akram-khan/Music-Store-Database-Analysis
   cd music-store-analysis
   ```

2. **Set up the database**
   ```sql
   -- Execute the database creation script
   SOURCE Music_Store_database.sql;
   ```

3. **Run the analysis**
   ```sql
   -- Execute queries from analysis.sql
   SOURCE analysis.sql;
   ```

## 📈 Sample Insights

### 🏆 Top Findings
- **Best Customer**: Identified the highest-spending customer across all transactions
- **Revenue Leaders**: Prague generates the highest total invoice amounts
- **Genre Preferences**: Rock music dominates in most English-speaking countries
- **Artist Performance**: Led Zeppelin leads in rock track count

### 💡 Business Recommendations
- Focus marketing efforts on high-revenue cities like Prague
- Develop rock music partnerships given genre popularity
- Create targeted campaigns for high-value customer segments
- Expand inventory in countries showing strong purchase patterns

## 🔧 Technologies Used

- **SQL** - Primary querying language
- **Database Design** - Normalized relational schema
- **Data Analysis** - Statistical and business intelligence techniques

## 📊 Query Performance Metrics

| Difficulty Level | Queries Count | Avg. Complexity | Key Techniques |
|-----------------|---------------|-----------------|----------------|
| Easy | 4 | Low | Basic SELECT, ORDER BY, LIMIT |
| Intermediate | 5 | Medium | JOINs, GROUP BY, Aggregations |
| Advanced | 3 | High | CTEs, Window Functions, Subqueries |

## 🤝 Contributing

Contributions are welcome! Feel free to:
- Add new analysis queries
- Optimize existing queries
- Suggest additional business questions
- Improve documentation

## 📝 License

This project is open source and available under the [MIT License](LICENSE).

## 👨‍💻 Author

**Akram Khan**
- GitHub: [@coder-akram-khan](https://github.com/coder-akram-khan)
- LinkedIn: [mr-akram-khan](https://linkedin.com/in//mr-akram-khan/)
- Email: akram.codes.it@gmail.com

---

⭐ **If you found this project helpful, please give it a star!** ⭐

*This project demonstrates practical SQL skills applicable to real-world business intelligence and data analysis scenarios.*

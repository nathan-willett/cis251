DROP DATABASE IF EXISTS RecipesExample;
CREATE DATABASE RecipesExample; 

USE RecipesExample;

CREATE TABLE Ingredient_Classes (
        IngredientClassID smallint NOT NULL DEFAULT 0 ,
        IngredientClassDescription nvarchar (255) NULL 
);

CREATE TABLE Ingredients (
        IngredientID int NOT NULL DEFAULT 0 ,
        IngredientName nvarchar (255) NULL ,
        IngredientClassID smallint NULL DEFAULT 0 ,
        MeasureAmountID smallint NULL DEFAULT 0 
);

CREATE TABLE Measurements (
        MeasureAmountID smallint NOT NULL DEFAULT 0 ,
        MeasurementDescription nvarchar (255) NULL 
);

CREATE TABLE Recipe_Classes (
        RecipeClassID smallint NOT NULL DEFAULT 0 ,
        RecipeClassDescription nvarchar (255) NULL 
);

CREATE TABLE Recipe_Ingredients (
        RecipeID int NOT NULL DEFAULT 0 ,
        RecipeSeqNo smallint NOT NULL DEFAULT 0 ,
        IngredientID int NULL DEFAULT 0 ,
        MeasureAmountID smallint NULL DEFAULT 0 ,
        Amount real NULL DEFAULT 0
);

CREATE TABLE Recipes (
        RecipeID int NOT NULL DEFAULT 0 ,
        RecipeTitle nvarchar (255) NULL ,
        RecipeClassID smallint NULL DEFAULT 0 ,
        Preparation text NULL ,
        Notes text NULL
);

ALTER TABLE Ingredient_Classes ADD CONSTRAINT Ingredient_Classes_PK PRIMARY KEY 
        (
                IngredientClassID
        );

ALTER TABLE Ingredients ADD CONSTRAINT Ingredients_PK PRIMARY KEY 
        (
                IngredientID
        );

CREATE  INDEX Ingredient_ClassesIngredients ON Ingredients(IngredientClassID);

CREATE  INDEX MeasurementsIngredients ON Ingredients(MeasureAmountID);

ALTER TABLE Measurements ADD CONSTRAINT Measurements_PK PRIMARY KEY 
        (
                MeasureAmountID
        );

ALTER TABLE Recipe_Classes ADD CONSTRAINT Recipe_Classes_PK PRIMARY KEY 
        (
               RecipeClassID
        );

ALTER TABLE Recipe_Ingredients ADD CONSTRAINT Recipe_Ingredients_PK PRIMARY KEY 
        (
                RecipeID, 
                RecipeSeqNo
        );

CREATE  INDEX IngredientID ON Recipe_Ingredients(IngredientID);

CREATE  INDEX MeasureAmountID ON Recipe_Ingredients(MeasureAmountID);

CREATE  INDEX RecipeID ON Recipe_Ingredients(RecipeID);

ALTER TABLE Recipes ADD CONSTRAINT Recipes_PK PRIMARY KEY 
        (
                RecipeID
        );

CREATE  INDEX Recipe_ClassesRecipes ON Recipes(RecipeClassID);

ALTER TABLE Ingredients ADD CONSTRAINT Ingredients_FK00 FOREIGN KEY 
        (
                IngredientClassID
        ) REFERENCES Ingredient_Classes 
        (
                IngredientClassID
        ),
        ADD CONSTRAINT Ingredients_FK01 FOREIGN KEY 
        (
                MeasureAmountID
        ) REFERENCES Measurements (
                MeasureAmountID
        );

ALTER TABLE Recipes ADD CONSTRAINT Recipes_FK00 FOREIGN KEY 
        (
                RecipeClassID
        ) REFERENCES Recipe_Classes (
                RecipeClassID
        );

ALTER Table Recipe_Ingredients ADD CONSTRAINT Recipe_Ingredients_FK00 FOREIGN KEY
	(
		RecipeID
	) REFERENCES Recipes (
		RecipeID
	),
	ADD CONSTRAINT Recipe_Ingredients_FK01 FOREIGN KEY
	(
		IngredientID
	) REFERENCES Ingredients (
		IngredientID
	),
	ADD CONSTRAINT Recipe_Ingredients_FK02 FOREIGN KEY
	(
		MeasureAmountID
	) REFERENCES Measurements (
		MeasureAmountID
	);
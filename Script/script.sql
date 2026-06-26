IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;
GO

BEGIN TRANSACTION;
GO

CREATE TABLE [Libros] (
    [Id] int NOT NULL IDENTITY,
    [Titulo] nvarchar(max) NOT NULL,
    [Autor] nvarchar(max) NOT NULL,
    [AnioPublicacion] int NOT NULL,
    [Genero] nvarchar(max) NOT NULL,
    [NumeroPaginas] int NOT NULL,
    [Precio] decimal(18,2) NOT NULL,
    [Disponible] bit NOT NULL,
    CONSTRAINT [PK_Libros] PRIMARY KEY ([Id])
);
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20260624003422_DBbiblioteca', N'8.0.11');
GO

COMMIT;
GO


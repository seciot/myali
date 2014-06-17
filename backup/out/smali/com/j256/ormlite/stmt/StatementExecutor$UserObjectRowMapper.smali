.class Lcom/j256/ormlite/stmt/StatementExecutor$UserObjectRowMapper;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/j256/ormlite/stmt/GenericRowMapper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UO:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/j256/ormlite/stmt/GenericRowMapper",
        "<TUO;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/j256/ormlite/dao/RawRowMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RawRowMapper",
            "<TUO;>;"
        }
    .end annotation
.end field

.field private final b:[Ljava/lang/String;

.field private final c:Lcom/j256/ormlite/stmt/GenericRowMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/GenericRowMapper",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/j256/ormlite/dao/RawRowMapper;[Ljava/lang/String;Lcom/j256/ormlite/stmt/GenericRowMapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/RawRowMapper",
            "<TUO;>;[",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/stmt/GenericRowMapper",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/j256/ormlite/stmt/StatementExecutor$UserObjectRowMapper;->a:Lcom/j256/ormlite/dao/RawRowMapper;

    iput-object p2, p0, Lcom/j256/ormlite/stmt/StatementExecutor$UserObjectRowMapper;->b:[Ljava/lang/String;

    iput-object p3, p0, Lcom/j256/ormlite/stmt/StatementExecutor$UserObjectRowMapper;->c:Lcom/j256/ormlite/stmt/GenericRowMapper;

    return-void
.end method


# virtual methods
.method public mapRow(Lcom/j256/ormlite/support/DatabaseResults;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseResults;",
            ")TUO;"
        }
    .end annotation

    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor$UserObjectRowMapper;->c:Lcom/j256/ormlite/stmt/GenericRowMapper;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/stmt/GenericRowMapper;->mapRow(Lcom/j256/ormlite/support/DatabaseResults;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor$UserObjectRowMapper;->a:Lcom/j256/ormlite/dao/RawRowMapper;

    iget-object v2, p0, Lcom/j256/ormlite/stmt/StatementExecutor$UserObjectRowMapper;->b:[Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/j256/ormlite/dao/RawRowMapper;->mapRow([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

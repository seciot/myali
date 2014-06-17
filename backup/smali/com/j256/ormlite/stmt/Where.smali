.class public Lcom/j256/ormlite/stmt/Where;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/j256/ormlite/table/TableInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/table/TableInfo",
            "<TT;TID;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/j256/ormlite/stmt/StatementBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/StatementBuilder",
            "<TT;TID;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/j256/ormlite/field/FieldType;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/j256/ormlite/db/DatabaseType;

.field private f:[Lcom/j256/ormlite/stmt/query/Clause;

.field private g:I

.field private h:Lcom/j256/ormlite/stmt/query/NeedsFutureClause;


# direct methods
.method constructor <init>(Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/stmt/StatementBuilder;Lcom/j256/ormlite/db/DatabaseType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/table/TableInfo",
            "<TT;TID;>;",
            "Lcom/j256/ormlite/stmt/StatementBuilder",
            "<TT;TID;>;",
            "Lcom/j256/ormlite/db/DatabaseType;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/j256/ormlite/stmt/query/Clause;

    iput-object v0, p0, Lcom/j256/ormlite/stmt/Where;->f:[Lcom/j256/ormlite/stmt/query/Clause;

    const/4 v0, 0x0

    iput v0, p0, Lcom/j256/ormlite/stmt/Where;->g:I

    iput-object v1, p0, Lcom/j256/ormlite/stmt/Where;->h:Lcom/j256/ormlite/stmt/query/NeedsFutureClause;

    iput-object p1, p0, Lcom/j256/ormlite/stmt/Where;->a:Lcom/j256/ormlite/table/TableInfo;

    iput-object p2, p0, Lcom/j256/ormlite/stmt/Where;->b:Lcom/j256/ormlite/stmt/StatementBuilder;

    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getIdField()Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/Where;->c:Lcom/j256/ormlite/field/FieldType;

    iget-object v0, p0, Lcom/j256/ormlite/stmt/Where;->c:Lcom/j256/ormlite/field/FieldType;

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/j256/ormlite/stmt/Where;->d:Ljava/lang/String;

    :goto_0
    iput-object p3, p0, Lcom/j256/ormlite/stmt/Where;->e:Lcom/j256/ormlite/db/DatabaseType;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/Where;->c:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v0}, Lcom/j256/ormlite/field/FieldType;->getColumnName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/Where;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;
    .locals 1

    iget-object v0, p0, Lcom/j256/ormlite/stmt/Where;->a:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v0, p1}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypeByColumnName(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    return-object v0
.end method

.method private a(ZLjava/lang/String;Lcom/j256/ormlite/stmt/QueryBuilder;)Lcom/j256/ormlite/stmt/Where;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/stmt/QueryBuilder",
            "<**>;)",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    invoke-virtual {p3}, Lcom/j256/ormlite/stmt/QueryBuilder;->getSelectColumnCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Inner query must have only 1 select column specified instead of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/j256/ormlite/stmt/QueryBuilder;->getSelectColumnCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p3}, Lcom/j256/ormlite/stmt/QueryBuilder;->enableInnerQuery()V

    new-instance v0, Lcom/j256/ormlite/stmt/query/InSubQuery;

    invoke-direct {p0, p2}, Lcom/j256/ormlite/stmt/Where;->a(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v1

    new-instance v2, Lcom/j256/ormlite/stmt/QueryBuilder$InternalQueryBuilderWrapper;

    invoke-direct {v2, p3}, Lcom/j256/ormlite/stmt/QueryBuilder$InternalQueryBuilderWrapper;-><init>(Lcom/j256/ormlite/stmt/QueryBuilder;)V

    invoke-direct {v0, p2, v1, v2, p1}, Lcom/j256/ormlite/stmt/query/InSubQuery;-><init>(Ljava/lang/String;Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/stmt/QueryBuilder$InternalQueryBuilderWrapper;Z)V

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/Where;->a(Lcom/j256/ormlite/stmt/query/Clause;)V

    return-object p0
.end method

.method private varargs a(ZLjava/lang/String;[Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    const/4 v2, 0x0

    array-length v0, p3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    aget-object v0, p3, v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Object argument to IN seems to be an array within an array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    aget-object v0, p3, v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/j256/ormlite/stmt/Where;

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Object argument to IN seems to be a Where.class instead of a QueryBuilder.class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/j256/ormlite/stmt/query/In;

    invoke-direct {p0, p2}, Lcom/j256/ormlite/stmt/Where;->a(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v1

    invoke-direct {v0, p2, v1, p3, p1}, Lcom/j256/ormlite/stmt/query/In;-><init>(Ljava/lang/String;Lcom/j256/ormlite/field/FieldType;[Ljava/lang/Object;Z)V

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/Where;->a(Lcom/j256/ormlite/stmt/query/Clause;)V

    return-object p0
.end method

.method private a()Lcom/j256/ormlite/stmt/query/Clause;
    .locals 2

    iget-object v0, p0, Lcom/j256/ormlite/stmt/Where;->f:[Lcom/j256/ormlite/stmt/query/Clause;

    iget v1, p0, Lcom/j256/ormlite/stmt/Where;->g:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private a(Lcom/j256/ormlite/stmt/query/Clause;)V
    .locals 1

    iget-object v0, p0, Lcom/j256/ormlite/stmt/Where;->h:Lcom/j256/ormlite/stmt/query/NeedsFutureClause;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/j256/ormlite/stmt/Where;->b(Lcom/j256/ormlite/stmt/query/Clause;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/Where;->h:Lcom/j256/ormlite/stmt/query/NeedsFutureClause;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/stmt/query/NeedsFutureClause;->setMissingClause(Lcom/j256/ormlite/stmt/query/Clause;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/Where;->h:Lcom/j256/ormlite/stmt/query/NeedsFutureClause;

    goto :goto_0
.end method

.method private a(Lcom/j256/ormlite/stmt/query/NeedsFutureClause;)V
    .locals 3

    iget-object v0, p0, Lcom/j256/ormlite/stmt/Where;->h:Lcom/j256/ormlite/stmt/query/NeedsFutureClause;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/j256/ormlite/stmt/Where;->h:Lcom/j256/ormlite/stmt/query/NeedsFutureClause;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is already waiting for a future clause, can\'t add: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/j256/ormlite/stmt/Where;->h:Lcom/j256/ormlite/stmt/query/NeedsFutureClause;

    invoke-direct {p0, p1}, Lcom/j256/ormlite/stmt/Where;->b(Lcom/j256/ormlite/stmt/query/Clause;)V

    return-void
.end method

.method private a([Lcom/j256/ormlite/stmt/Where;Ljava/lang/String;)[Lcom/j256/ormlite/stmt/query/Clause;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;",
            "Ljava/lang/String;",
            ")[",
            "Lcom/j256/ormlite/stmt/query/Clause;"
        }
    .end annotation

    array-length v0, p1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    array-length v0, p1

    new-array v0, v0, [Lcom/j256/ormlite/stmt/query/Clause;

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-direct {p0, p2}, Lcom/j256/ormlite/stmt/Where;->b(Ljava/lang/String;)Lcom/j256/ormlite/stmt/query/Clause;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Lcom/j256/ormlite/stmt/query/Clause;
    .locals 4

    iget v0, p0, Lcom/j256/ormlite/stmt/Where;->g:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Expecting there to be a clause already defined for \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' operation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/Where;->f:[Lcom/j256/ormlite/stmt/query/Clause;

    iget v1, p0, Lcom/j256/ormlite/stmt/Where;->g:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/j256/ormlite/stmt/Where;->g:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/j256/ormlite/stmt/Where;->f:[Lcom/j256/ormlite/stmt/query/Clause;

    iget v2, p0, Lcom/j256/ormlite/stmt/Where;->g:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    return-object v0
.end method

.method private b(Lcom/j256/ormlite/stmt/query/Clause;)V
    .locals 4

    iget v0, p0, Lcom/j256/ormlite/stmt/Where;->g:I

    iget-object v1, p0, Lcom/j256/ormlite/stmt/Where;->f:[Lcom/j256/ormlite/stmt/query/Clause;

    array-length v1, v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/j256/ormlite/stmt/Where;->g:I

    mul-int/lit8 v0, v0, 0x2

    new-array v1, v0, [Lcom/j256/ormlite/stmt/query/Clause;

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/j256/ormlite/stmt/Where;->g:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/j256/ormlite/stmt/Where;->f:[Lcom/j256/ormlite/stmt/query/Clause;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    iget-object v2, p0, Lcom/j256/ormlite/stmt/Where;->f:[Lcom/j256/ormlite/stmt/query/Clause;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/j256/ormlite/stmt/Where;->f:[Lcom/j256/ormlite/stmt/query/Clause;

    :cond_1
    iget-object v0, p0, Lcom/j256/ormlite/stmt/Where;->f:[Lcom/j256/ormlite/stmt/query/Clause;

    iget v1, p0, Lcom/j256/ormlite/stmt/Where;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/j256/ormlite/stmt/Where;->g:I

    aput-object p1, v0, v1

    return-void
.end method


# virtual methods
.method public and()Lcom/j256/ormlite/stmt/Where;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    new-instance v0, Lcom/j256/ormlite/stmt/query/ManyClause;

    const-string/jumbo v1, "AND"

    invoke-direct {p0, v1}, Lcom/j256/ormlite/stmt/Where;->b(Ljava/lang/String;)Lcom/j256/ormlite/stmt/query/Clause;

    move-result-object v1

    const-string/jumbo v2, "AND"

    invoke-direct {v0, v1, v2}, Lcom/j256/ormlite/stmt/query/ManyClause;-><init>(Lcom/j256/ormlite/stmt/query/Clause;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/Where;->a(Lcom/j256/ormlite/stmt/query/NeedsFutureClause;)V

    return-object p0
.end method

.method public and(I)Lcom/j256/ormlite/stmt/Where;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Must have at least one clause in and(numClauses)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-array v1, p1, [Lcom/j256/ormlite/stmt/query/Clause;

    add-int/lit8 v0, p1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    const-string/jumbo v2, "AND"

    invoke-direct {p0, v2}, Lcom/j256/ormlite/stmt/Where;->b(Ljava/lang/String;)Lcom/j256/ormlite/stmt/query/Clause;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/j256/ormlite/stmt/query/ManyClause;

    const-string/jumbo v2, "AND"

    invoke-direct {v0, v1, v2}, Lcom/j256/ormlite/stmt/query/ManyClause;-><init>([Lcom/j256/ormlite/stmt/query/Clause;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/Where;->a(Lcom/j256/ormlite/stmt/query/Clause;)V

    return-object p0
.end method

.method public varargs and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;[",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;)",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    const-string/jumbo v0, "AND"

    invoke-direct {p0, p3, v0}, Lcom/j256/ormlite/stmt/Where;->a([Lcom/j256/ormlite/stmt/Where;Ljava/lang/String;)[Lcom/j256/ormlite/stmt/query/Clause;

    move-result-object v0

    const-string/jumbo v1, "AND"

    invoke-direct {p0, v1}, Lcom/j256/ormlite/stmt/Where;->b(Ljava/lang/String;)Lcom/j256/ormlite/stmt/query/Clause;

    move-result-object v1

    const-string/jumbo v2, "AND"

    invoke-direct {p0, v2}, Lcom/j256/ormlite/stmt/Where;->b(Ljava/lang/String;)Lcom/j256/ormlite/stmt/query/Clause;

    move-result-object v2

    new-instance v3, Lcom/j256/ormlite/stmt/query/ManyClause;

    const-string/jumbo v4, "AND"

    invoke-direct {v3, v2, v1, v0, v4}, Lcom/j256/ormlite/stmt/query/ManyClause;-><init>(Lcom/j256/ormlite/stmt/query/Clause;Lcom/j256/ormlite/stmt/query/Clause;[Lcom/j256/ormlite/stmt/query/Clause;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/j256/ormlite/stmt/Where;->a(Lcom/j256/ormlite/stmt/query/Clause;)V

    return-object p0
.end method

.method appendSql(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Lcom/j256/ormlite/stmt/ArgumentHolder;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcom/j256/ormlite/stmt/Where;->g:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No where clauses defined.  Did you miss a where operation?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/j256/ormlite/stmt/Where;->g:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Both the \"left-hand\" and \"right-hand\" clauses have been defined.  Did you miss an AND or OR?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0}, Lcom/j256/ormlite/stmt/Where;->a()Lcom/j256/ormlite/stmt/query/Clause;

    move-result-object v0

    iget-object v1, p0, Lcom/j256/ormlite/stmt/Where;->e:Lcom/j256/ormlite/db/DatabaseType;

    invoke-interface {v0, v1, p1, p2}, Lcom/j256/ormlite/stmt/query/Clause;->appendSql(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/StringBuilder;Ljava/util/List;)V

    return-void
.end method

.method public between(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    new-instance v0, Lcom/j256/ormlite/stmt/query/Between;

    invoke-direct {p0, p1}, Lcom/j256/ormlite/stmt/Where;->a(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/j256/ormlite/stmt/query/Between;-><init>(Ljava/lang/String;Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/Where;->a(Lcom/j256/ormlite/stmt/query/Clause;)V

    return-object p0
.end method

.method public clear()Lcom/j256/ormlite/stmt/Where;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/j256/ormlite/stmt/Where;->g:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/j256/ormlite/stmt/Where;->f:[Lcom/j256/ormlite/stmt/query/Clause;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/j256/ormlite/stmt/Where;->g:I

    return-object p0
.end method

.method public eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    new-instance v0, Lcom/j256/ormlite/stmt/query/SimpleComparison;

    invoke-direct {p0, p1}, Lcom/j256/ormlite/stmt/Where;->a(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/j256/ormlite/stmt/query/SimpleComparison;-><init>(Ljava/lang/String;Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/Where;->a(Lcom/j256/ormlite/stmt/query/Clause;)V

    return-object p0
.end method

.method public exists(Lcom/j256/ormlite/stmt/QueryBuilder;)Lcom/j256/ormlite/stmt/Where;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/QueryBuilder",
            "<**>;)",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->enableInnerQuery()V

    new-instance v0, Lcom/j256/ormlite/stmt/query/Exists;

    new-instance v1, Lcom/j256/ormlite/stmt/QueryBuilder$InternalQueryBuilderWrapper;

    invoke-direct {v1, p1}, Lcom/j256/ormlite/stmt/QueryBuilder$InternalQueryBuilderWrapper;-><init>(Lcom/j256/ormlite/stmt/QueryBuilder;)V

    invoke-direct {v0, v1}, Lcom/j256/ormlite/stmt/query/Exists;-><init>(Lcom/j256/ormlite/stmt/QueryBuilder$InternalQueryBuilderWrapper;)V

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/Where;->a(Lcom/j256/ormlite/stmt/query/Clause;)V

    return-object p0
.end method

.method public ge(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    new-instance v0, Lcom/j256/ormlite/stmt/query/SimpleComparison;

    invoke-direct {p0, p1}, Lcom/j256/ormlite/stmt/Where;->a(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v1

    const-string/jumbo v2, ">="

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/j256/ormlite/stmt/query/SimpleComparison;-><init>(Ljava/lang/String;Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/Where;->a(Lcom/j256/ormlite/stmt/query/Clause;)V

    return-object p0
.end method

.method public getStatement()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/j256/ormlite/stmt/Where;->appendSql(Ljava/lang/StringBuilder;Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public gt(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    new-instance v0, Lcom/j256/ormlite/stmt/query/SimpleComparison;

    invoke-direct {p0, p1}, Lcom/j256/ormlite/stmt/Where;->a(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v1

    const-string/jumbo v2, ">"

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/j256/ormlite/stmt/query/SimpleComparison;-><init>(Ljava/lang/String;Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/Where;->a(Lcom/j256/ormlite/stmt/query/Clause;)V

    return-object p0
.end method

.method public idEq(Lcom/j256/ormlite/dao/Dao;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<OD:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/dao/Dao",
            "<TOD;*>;TOD;)",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/j256/ormlite/stmt/Where;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/sql/SQLException;

    const-string/jumbo v1, "Object has no id column specified"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/j256/ormlite/stmt/query/SimpleComparison;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/Where;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/j256/ormlite/stmt/Where;->c:Lcom/j256/ormlite/field/FieldType;

    invoke-interface {p1, p2}, Lcom/j256/ormlite/dao/Dao;->extractId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "="

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/j256/ormlite/stmt/query/SimpleComparison;-><init>(Ljava/lang/String;Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/Where;->a(Lcom/j256/ormlite/stmt/query/Clause;)V

    return-object p0
.end method

.method public idEq(Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TID;)",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/j256/ormlite/stmt/Where;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/sql/SQLException;

    const-string/jumbo v1, "Object has no id column specified"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/j256/ormlite/stmt/query/SimpleComparison;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/Where;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/j256/ormlite/stmt/Where;->c:Lcom/j256/ormlite/field/FieldType;

    const-string/jumbo v3, "="

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/j256/ormlite/stmt/query/SimpleComparison;-><init>(Ljava/lang/String;Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/Where;->a(Lcom/j256/ormlite/stmt/query/Clause;)V

    return-object p0
.end method

.method public in(Ljava/lang/String;Lcom/j256/ormlite/stmt/QueryBuilder;)Lcom/j256/ormlite/stmt/Where;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/stmt/QueryBuilder",
            "<**>;)",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/j256/ormlite/stmt/Where;->a(ZLjava/lang/String;Lcom/j256/ormlite/stmt/QueryBuilder;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    return-object v0
.end method

.method public in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    new-instance v0, Lcom/j256/ormlite/stmt/query/In;

    invoke-direct {p0, p1}, Lcom/j256/ormlite/stmt/Where;->a(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/j256/ormlite/stmt/query/In;-><init>(Ljava/lang/String;Lcom/j256/ormlite/field/FieldType;Ljava/lang/Iterable;Z)V

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/Where;->a(Lcom/j256/ormlite/stmt/query/Clause;)V

    return-object p0
.end method

.method public varargs in(Ljava/lang/String;[Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/j256/ormlite/stmt/Where;->a(ZLjava/lang/String;[Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    return-object v0
.end method

.method public isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    new-instance v0, Lcom/j256/ormlite/stmt/query/IsNotNull;

    invoke-direct {p0, p1}, Lcom/j256/ormlite/stmt/Where;->a(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/j256/ormlite/stmt/query/IsNotNull;-><init>(Ljava/lang/String;Lcom/j256/ormlite/field/FieldType;)V

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/Where;->a(Lcom/j256/ormlite/stmt/query/Clause;)V

    return-object p0
.end method

.method public isNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    new-instance v0, Lcom/j256/ormlite/stmt/query/IsNull;

    invoke-direct {p0, p1}, Lcom/j256/ormlite/stmt/Where;->a(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/j256/ormlite/stmt/query/IsNull;-><init>(Ljava/lang/String;Lcom/j256/ormlite/field/FieldType;)V

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/Where;->a(Lcom/j256/ormlite/stmt/query/Clause;)V

    return-object p0
.end method

.method public iterator()Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/CloseableIterator",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/j256/ormlite/stmt/Where;->b:Lcom/j256/ormlite/stmt/StatementBuilder;

    instance-of v0, v0, Lcom/j256/ormlite/stmt/QueryBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/j256/ormlite/stmt/Where;->b:Lcom/j256/ormlite/stmt/StatementBuilder;

    check-cast v0, Lcom/j256/ormlite/stmt/QueryBuilder;

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->iterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Cannot call iterator on a statement of type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/j256/ormlite/stmt/Where;->b:Lcom/j256/ormlite/stmt/StatementBuilder;

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/StatementBuilder;->getType()Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public le(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    new-instance v0, Lcom/j256/ormlite/stmt/query/SimpleComparison;

    invoke-direct {p0, p1}, Lcom/j256/ormlite/stmt/Where;->a(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v1

    const-string/jumbo v2, "<="

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/j256/ormlite/stmt/query/SimpleComparison;-><init>(Ljava/lang/String;Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/Where;->a(Lcom/j256/ormlite/stmt/query/Clause;)V

    return-object p0
.end method

.method public like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    new-instance v0, Lcom/j256/ormlite/stmt/query/SimpleComparison;

    invoke-direct {p0, p1}, Lcom/j256/ormlite/stmt/Where;->a(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v1

    const-string/jumbo v2, "LIKE"

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/j256/ormlite/stmt/query/SimpleComparison;-><init>(Ljava/lang/String;Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/Where;->a(Lcom/j256/ormlite/stmt/query/Clause;)V

    return-object p0
.end method

.method public lt(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    new-instance v0, Lcom/j256/ormlite/stmt/query/SimpleComparison;

    invoke-direct {p0, p1}, Lcom/j256/ormlite/stmt/Where;->a(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v1

    const-string/jumbo v2, "<"

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/j256/ormlite/stmt/query/SimpleComparison;-><init>(Ljava/lang/String;Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/Where;->a(Lcom/j256/ormlite/stmt/query/Clause;)V

    return-object p0
.end method

.method public ne(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    new-instance v0, Lcom/j256/ormlite/stmt/query/SimpleComparison;

    invoke-direct {p0, p1}, Lcom/j256/ormlite/stmt/Where;->a(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v1

    const-string/jumbo v2, "<>"

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/j256/ormlite/stmt/query/SimpleComparison;-><init>(Ljava/lang/String;Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/Where;->a(Lcom/j256/ormlite/stmt/query/Clause;)V

    return-object p0
.end method

.method public not()Lcom/j256/ormlite/stmt/Where;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    new-instance v0, Lcom/j256/ormlite/stmt/query/Not;

    invoke-direct {v0}, Lcom/j256/ormlite/stmt/query/Not;-><init>()V

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/Where;->a(Lcom/j256/ormlite/stmt/query/NeedsFutureClause;)V

    return-object p0
.end method

.method public not(Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;)",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    new-instance v0, Lcom/j256/ormlite/stmt/query/Not;

    const-string/jumbo v1, "NOT"

    invoke-direct {p0, v1}, Lcom/j256/ormlite/stmt/Where;->b(Ljava/lang/String;)Lcom/j256/ormlite/stmt/query/Clause;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/j256/ormlite/stmt/query/Not;-><init>(Lcom/j256/ormlite/stmt/query/Clause;)V

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/Where;->a(Lcom/j256/ormlite/stmt/query/Clause;)V

    return-object p0
.end method

.method public notIn(Ljava/lang/String;Lcom/j256/ormlite/stmt/QueryBuilder;)Lcom/j256/ormlite/stmt/Where;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/stmt/QueryBuilder",
            "<**>;)",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/j256/ormlite/stmt/Where;->a(ZLjava/lang/String;Lcom/j256/ormlite/stmt/QueryBuilder;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    return-object v0
.end method

.method public notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    new-instance v0, Lcom/j256/ormlite/stmt/query/In;

    invoke-direct {p0, p1}, Lcom/j256/ormlite/stmt/Where;->a(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/j256/ormlite/stmt/query/In;-><init>(Ljava/lang/String;Lcom/j256/ormlite/field/FieldType;Ljava/lang/Iterable;Z)V

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/Where;->a(Lcom/j256/ormlite/stmt/query/Clause;)V

    return-object p0
.end method

.method public varargs notIn(Ljava/lang/String;[Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/j256/ormlite/stmt/Where;->a(ZLjava/lang/String;[Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    return-object v0
.end method

.method public or()Lcom/j256/ormlite/stmt/Where;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    new-instance v0, Lcom/j256/ormlite/stmt/query/ManyClause;

    const-string/jumbo v1, "OR"

    invoke-direct {p0, v1}, Lcom/j256/ormlite/stmt/Where;->b(Ljava/lang/String;)Lcom/j256/ormlite/stmt/query/Clause;

    move-result-object v1

    const-string/jumbo v2, "OR"

    invoke-direct {v0, v1, v2}, Lcom/j256/ormlite/stmt/query/ManyClause;-><init>(Lcom/j256/ormlite/stmt/query/Clause;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/Where;->a(Lcom/j256/ormlite/stmt/query/NeedsFutureClause;)V

    return-object p0
.end method

.method public or(I)Lcom/j256/ormlite/stmt/Where;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Must have at least one clause in or(numClauses)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-array v1, p1, [Lcom/j256/ormlite/stmt/query/Clause;

    add-int/lit8 v0, p1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    const-string/jumbo v2, "OR"

    invoke-direct {p0, v2}, Lcom/j256/ormlite/stmt/Where;->b(Ljava/lang/String;)Lcom/j256/ormlite/stmt/query/Clause;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/j256/ormlite/stmt/query/ManyClause;

    const-string/jumbo v2, "OR"

    invoke-direct {v0, v1, v2}, Lcom/j256/ormlite/stmt/query/ManyClause;-><init>([Lcom/j256/ormlite/stmt/query/Clause;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/Where;->a(Lcom/j256/ormlite/stmt/query/Clause;)V

    return-object p0
.end method

.method public varargs or(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;[",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;)",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    const-string/jumbo v0, "OR"

    invoke-direct {p0, p3, v0}, Lcom/j256/ormlite/stmt/Where;->a([Lcom/j256/ormlite/stmt/Where;Ljava/lang/String;)[Lcom/j256/ormlite/stmt/query/Clause;

    move-result-object v0

    const-string/jumbo v1, "OR"

    invoke-direct {p0, v1}, Lcom/j256/ormlite/stmt/Where;->b(Ljava/lang/String;)Lcom/j256/ormlite/stmt/query/Clause;

    move-result-object v1

    const-string/jumbo v2, "OR"

    invoke-direct {p0, v2}, Lcom/j256/ormlite/stmt/Where;->b(Ljava/lang/String;)Lcom/j256/ormlite/stmt/query/Clause;

    move-result-object v2

    new-instance v3, Lcom/j256/ormlite/stmt/query/ManyClause;

    const-string/jumbo v4, "OR"

    invoke-direct {v3, v2, v1, v0, v4}, Lcom/j256/ormlite/stmt/query/ManyClause;-><init>(Lcom/j256/ormlite/stmt/query/Clause;Lcom/j256/ormlite/stmt/query/Clause;[Lcom/j256/ormlite/stmt/query/Clause;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/j256/ormlite/stmt/Where;->a(Lcom/j256/ormlite/stmt/query/Clause;)V

    return-object p0
.end method

.method public prepare()Lcom/j256/ormlite/stmt/PreparedQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/stmt/PreparedQuery",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/j256/ormlite/stmt/Where;->b:Lcom/j256/ormlite/stmt/StatementBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/stmt/StatementBuilder;->prepareStatement(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;

    move-result-object v0

    return-object v0
.end method

.method public query()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/j256/ormlite/stmt/Where;->b:Lcom/j256/ormlite/stmt/StatementBuilder;

    instance-of v0, v0, Lcom/j256/ormlite/stmt/QueryBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/j256/ormlite/stmt/Where;->b:Lcom/j256/ormlite/stmt/StatementBuilder;

    check-cast v0, Lcom/j256/ormlite/stmt/QueryBuilder;

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->query()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Cannot call query on a statement of type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/j256/ormlite/stmt/Where;->b:Lcom/j256/ormlite/stmt/StatementBuilder;

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/StatementBuilder;->getType()Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs raw(Ljava/lang/String;[Lcom/j256/ormlite/stmt/ArgumentHolder;)Lcom/j256/ormlite/stmt/Where;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lcom/j256/ormlite/stmt/ArgumentHolder;",
            ")",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v2, p2, v0

    invoke-interface {v2}, Lcom/j256/ormlite/stmt/ArgumentHolder;->getColumnName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Lcom/j256/ormlite/stmt/ArgumentHolder;->getSqlType()Lcom/j256/ormlite/field/SqlType;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Either the column name or SqlType must be set on each argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, v3}, Lcom/j256/ormlite/stmt/Where;->a(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/j256/ormlite/stmt/ArgumentHolder;->setMetaInfo(Lcom/j256/ormlite/field/FieldType;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/j256/ormlite/stmt/query/Raw;

    invoke-direct {v0, p1, p2}, Lcom/j256/ormlite/stmt/query/Raw;-><init>(Ljava/lang/String;[Lcom/j256/ormlite/stmt/ArgumentHolder;)V

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/Where;->a(Lcom/j256/ormlite/stmt/query/Clause;)V

    return-object p0
.end method

.method public rawComparison(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    new-instance v0, Lcom/j256/ormlite/stmt/query/SimpleComparison;

    invoke-direct {p0, p1}, Lcom/j256/ormlite/stmt/Where;->a(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v1

    invoke-direct {v0, p1, v1, p3, p2}, Lcom/j256/ormlite/stmt/query/SimpleComparison;-><init>(Ljava/lang/String;Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/Where;->a(Lcom/j256/ormlite/stmt/query/Clause;)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/j256/ormlite/stmt/Where;->g:I

    if-nez v0, :cond_0

    const-string/jumbo v0, "empty where clause"

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/j256/ormlite/stmt/Where;->a()Lcom/j256/ormlite/stmt/query/Clause;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "where clause: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

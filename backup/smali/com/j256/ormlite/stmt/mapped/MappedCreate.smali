.class public Lcom/j256/ormlite/stmt/mapped/MappedCreate;
.super Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement",
        "<TT;TID;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method private constructor <init>(Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/table/TableInfo",
            "<TT;TID;>;",
            "Ljava/lang/String;",
            "[",
            "Lcom/j256/ormlite/field/FieldType;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;-><init>(Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;)V

    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getDataClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->a:Ljava/lang/String;

    iput p5, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->c:I

    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Number;Ljava/lang/String;Lcom/j256/ormlite/dao/ObjectCache;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Number;",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->idField:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v0, p1, p2, p4}, Lcom/j256/ormlite/field/FieldType;->assignIdValue(Ljava/lang/Object;Ljava/lang/Number;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/lang/Object;

    sget-object v0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->logger:Lcom/j256/ormlite/logger/Logger;

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->DEBUG:Lcom/j256/ormlite/logger/Log$Level;

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/logger/Logger;->isLevelEnabled(Lcom/j256/ormlite/logger/Log$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v1, "assigned id \'{}\' from {} to \'{}\' in {} object"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->idField:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v4}, Lcom/j256/ormlite/field/FieldType;->getFieldName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static a(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/field/FieldType;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/j256/ormlite/field/FieldType;->isForeignCollection()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p0}, Lcom/j256/ormlite/db/DatabaseType;->isIdSequenceNeeded()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Lcom/j256/ormlite/db/DatabaseType;->isSelectSequenceBeforeInsert()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/j256/ormlite/field/FieldType;->isGeneratedId()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/j256/ormlite/field/FieldType;->isSelfGeneratedId()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/j256/ormlite/field/FieldType;->isAllowGeneratedIdInsert()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private static a([Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p0, v1

    invoke-virtual {v3, p1}, Lcom/j256/ormlite/field/FieldType;->extractJavaFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static build(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;)Lcom/j256/ormlite/stmt/mapped/MappedCreate;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ID:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Lcom/j256/ormlite/table/TableInfo",
            "<TT;TID;>;)",
            "Lcom/j256/ormlite/stmt/mapped/MappedCreate",
            "<TT;TID;>;"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v0, "INSERT INTO "

    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v9, v0, v2}, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->appendTableName(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x28

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, -0x1

    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    move v0, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v8, v3, v2

    invoke-static {p0, v8}, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->a(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/field/FieldType;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v8}, Lcom/j256/ormlite/field/FieldType;->isVersion()Z

    move-result v8

    if-eqz v8, :cond_0

    move v5, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-array v3, v0, [Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v10

    array-length v11, v10

    move v8, v1

    move v0, v7

    move v4, v1

    :goto_1
    if-ge v8, v11, :cond_4

    aget-object v12, v10, v8

    invoke-static {p0, v12}, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->a(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/field/FieldType;)Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-static {p0, v9, v12, v6}, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->appendFieldColumnName(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;Ljava/util/List;)V

    add-int/lit8 v2, v4, 0x1

    aput-object v12, v3, v4

    :goto_3
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    move v4, v2

    goto :goto_1

    :cond_3
    const-string/jumbo v2, ","

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const-string/jumbo v0, ") VALUES ("

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v4

    array-length v8, v4

    move v2, v1

    move v0, v7

    :goto_4
    if-ge v2, v8, :cond_7

    aget-object v7, v4, v2

    invoke-static {p0, v7}, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->a(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/field/FieldType;)Z

    move-result v7

    if-eqz v7, :cond_5

    if-eqz v0, :cond_6

    move v0, v1

    :goto_5
    const-string/jumbo v7, "?"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    const-string/jumbo v7, ","

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_7
    const-string/jumbo v0, ")"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getIdField()Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    if-nez v0, :cond_8

    move-object v4, v6

    :goto_6
    new-instance v0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/j256/ormlite/stmt/mapped/MappedCreate;-><init>(Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;I)V

    return-object v0

    :cond_8
    invoke-virtual {v0}, Lcom/j256/ormlite/field/FieldType;->getGeneratedIdSequence()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    move-object v4, v6

    goto :goto_6

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-interface {p0, v1, v0}, Lcom/j256/ormlite/db/DatabaseType;->appendSelectNextValFromSequence(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_a
    move v2, v4

    goto :goto_3
.end method


# virtual methods
.method public insert(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "TT;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")I"
        }
    .end annotation

    const-wide/16 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->idField:Lcom/j256/ormlite/field/FieldType;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->idField:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v0}, Lcom/j256/ormlite/field/FieldType;->isAllowGeneratedIdInsert()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->idField:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v0, p3}, Lcom/j256/ormlite/field/FieldType;->isObjectsFieldValueDefault(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->idField:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v3}, Lcom/j256/ormlite/field/FieldType;->isSelfGeneratedId()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->idField:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v3}, Lcom/j256/ormlite/field/FieldType;->isGeneratedId()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->idField:Lcom/j256/ormlite/field/FieldType;

    iget-object v3, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->idField:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v3}, Lcom/j256/ormlite/field/FieldType;->generateId()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p3, v3, v1, p4}, Lcom/j256/ormlite/field/FieldType;->assignField(Ljava/lang/Object;Ljava/lang/Object;ZLcom/j256/ormlite/dao/ObjectCache;)V

    move-object v3, v2

    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v0}, Lcom/j256/ormlite/table/TableInfo;->isForeignAutoCreate()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v0}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    array-length v4, v0

    :goto_2
    if-ge v1, v4, :cond_5

    aget-object v5, v0, v1

    invoke-virtual {v5}, Lcom/j256/ormlite/field/FieldType;->isForeignAutoCreate()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5, p3}, Lcom/j256/ormlite/field/FieldType;->extractRawJavaFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/j256/ormlite/field/FieldType;->getForeignIdField()Lcom/j256/ormlite/field/FieldType;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/j256/ormlite/field/FieldType;->isObjectsFieldValueDefault(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v5, v6}, Lcom/j256/ormlite/field/FieldType;->createWithForeignDao(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->idField:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v3}, Lcom/j256/ormlite/field/FieldType;->isGeneratedIdSequence()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Lcom/j256/ormlite/db/DatabaseType;->isSelectSequenceBeforeInsert()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->a:Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/j256/ormlite/support/DatabaseConnection;->queryForLong(Ljava/lang/String;)J

    move-result-wide v3

    sget-object v0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v5, "queried for sequence {} using stmt: {}"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v7, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->a:Ljava/lang/String;

    invoke-virtual {v0, v5, v6, v7}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    cmp-long v0, v3, v9

    if-nez v0, :cond_3

    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Should not have returned 0 for stmt: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v3, "sequence"

    invoke-direct {p0, p3, v0, v3, p4}, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->a(Ljava/lang/Object;Ljava/lang/Number;Ljava/lang/String;Lcom/j256/ormlite/dao/ObjectCache;)V

    move-object v3, v2

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->idField:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v3}, Lcom/j256/ormlite/field/FieldType;->isGeneratedId()Z

    move-result v3

    if-eqz v3, :cond_d

    if-eqz v0, :cond_d

    new-instance v0, Lcom/j256/ormlite/stmt/mapped/MappedCreate$KeyHolder;

    invoke-direct {v0, v2}, Lcom/j256/ormlite/stmt/mapped/MappedCreate$KeyHolder;-><init>(Lcom/j256/ormlite/stmt/mapped/MappedCreate$1;)V

    move-object v3, v0

    goto/16 :goto_1

    :cond_5
    :try_start_1
    invoke-virtual {p0, p3}, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->getFieldObjects(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    iget v0, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->c:I

    if-ltz v0, :cond_c

    iget v0, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->c:I

    aget-object v0, v1, v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->argFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    iget v2, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->c:I

    aget-object v2, v0, v2

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/j256/ormlite/field/FieldType;->moveToNextValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget v4, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->c:I

    invoke-virtual {v2, v0}, Lcom/j256/ormlite/field/FieldType;->convertJavaFieldToSqlArgValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v4

    :goto_3
    iget-object v2, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->statement:Ljava/lang/String;

    iget-object v4, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->argFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    invoke-interface {p2, v2, v1, v4, v3}, Lcom/j256/ormlite/support/DatabaseConnection;->insert(Ljava/lang/String;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/support/GeneratedKeyHolder;)I

    move-result v2

    sget-object v4, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v5, "insert data with statement \'{}\' and {} args, changed {} rows"

    iget-object v6, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->statement:Ljava/lang/String;

    array-length v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    array-length v4, v1

    if-lez v4, :cond_6

    sget-object v4, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v5, "insert arguments: {}"

    invoke-virtual {v4, v5, v1}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    if-lez v2, :cond_b

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->argFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    iget v4, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->c:I

    aget-object v1, v1, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, p3, v0, v4, v5}, Lcom/j256/ormlite/field/FieldType;->assignField(Ljava/lang/Object;Ljava/lang/Object;ZLcom/j256/ormlite/dao/ObjectCache;)V

    :cond_7
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/mapped/MappedCreate$KeyHolder;->getKey()Ljava/lang/Number;

    move-result-object v0

    if-nez v0, :cond_8

    new-instance v0, Ljava/sql/SQLException;

    const-string/jumbo v1, "generated-id key was not set by the update call"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unable to run insert stmt on object "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->statement:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    :cond_8
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    cmp-long v1, v3, v9

    if-nez v1, :cond_9

    new-instance v0, Ljava/sql/SQLException;

    const-string/jumbo v1, "generated-id key must not be 0 value"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    const-string/jumbo v1, "keyholder"

    invoke-direct {p0, p3, v0, v1, p4}, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->a(Ljava/lang/Object;Ljava/lang/Number;Ljava/lang/String;Lcom/j256/ormlite/dao/ObjectCache;)V

    :cond_a
    if-eqz p4, :cond_b

    iget-object v0, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v0}, Lcom/j256/ormlite/table/TableInfo;->getForeignCollections()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->a([Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->idField:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v0, p3}, Lcom/j256/ormlite/field/FieldType;->extractJavaFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->clazz:Ljava/lang/Class;

    invoke-interface {p4, v1, v0, p3}, Lcom/j256/ormlite/dao/ObjectCache;->put(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_b
    return v2

    :cond_c
    move-object v0, v2

    goto/16 :goto_3

    :cond_d
    move-object v3, v2

    goto/16 :goto_1
.end method

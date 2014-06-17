.class public Lcom/j256/ormlite/android/DatabaseTableConfigUtil;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/reflect/Field;

.field private static c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static d:Ljava/lang/reflect/Field;

.field private static e:Ljava/lang/reflect/Field;

.field private static f:I

.field private static final g:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->f:I

    invoke-static {}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->a()[I

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->g:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/lang/reflect/Field;)Lcom/j256/ormlite/field/DatabaseFieldConfig;
    .locals 6

    const/4 v2, 0x0

    sget-object v0, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->g:[I

    if-nez v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->fromField(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/lang/reflect/Field;)Lcom/j256/ormlite/field/DatabaseFieldConfig;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Lcom/j256/ormlite/field/DatabaseField;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/field/DatabaseField;

    if-eqz v0, :cond_3

    :try_start_0
    invoke-static {v0}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v3, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->a:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v1, v3, :cond_1

    move-object v0, v2

    :goto_1
    if-nez v0, :cond_6

    invoke-static {p0, p1, p2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->fromField(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/lang/reflect/Field;)Lcom/j256/ormlite/field/DatabaseFieldConfig;

    move-result-object v0

    goto :goto_0

    :cond_1
    :try_start_1
    sget-object v1, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v2

    goto :goto_1

    :cond_2
    new-instance v3, Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;-><init>(Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    move v4, v1

    :goto_2
    sget-object v1, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->g:[I

    array-length v1, v1

    if-ge v4, v1, :cond_5

    sget-object v1, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->e:Ljava/lang/reflect/Field;

    aget-object v5, v0, v4

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    sget-object v5, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->g:[I

    aget v5, v5, v4

    packed-switch v5, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Could not find support for DatabaseField number "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    :cond_3
    move-object v0, v2

    goto :goto_1

    :pswitch_0
    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setColumnName(Ljava/lang/String;)V

    :cond_4
    :goto_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    :pswitch_1
    check-cast v1, Lcom/j256/ormlite/field/DataType;

    invoke-virtual {v3, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setDataType(Lcom/j256/ormlite/field/DataType;)V

    goto :goto_3

    :pswitch_2
    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string/jumbo v5, "__ormlite__ no default value string was specified"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v3, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setDefaultValue(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_3
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setWidth(I)V

    goto :goto_3

    :pswitch_4
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setCanBeNull(Z)V

    goto :goto_3

    :pswitch_5
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setId(Z)V

    goto :goto_3

    :pswitch_6
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setGeneratedId(Z)V

    goto :goto_3

    :pswitch_7
    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setGeneratedIdSequence(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_8
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setForeign(Z)V

    goto :goto_3

    :pswitch_9
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setUseGetSet(Z)V

    goto :goto_3

    :pswitch_a
    check-cast v1, Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->findMatchingEnumVal(Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setUnknownEnumValue(Ljava/lang/Enum;)V

    goto :goto_3

    :pswitch_b
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setThrowIfNull(Z)V

    goto :goto_3

    :pswitch_c
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setPersisted(Z)V

    goto :goto_3

    :pswitch_d
    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setFormat(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_e
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setUnique(Z)V

    goto/16 :goto_3

    :pswitch_f
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setUniqueCombo(Z)V

    goto/16 :goto_3

    :pswitch_10
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setIndex(Z)V

    goto/16 :goto_3

    :pswitch_11
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setUniqueIndex(Z)V

    goto/16 :goto_3

    :pswitch_12
    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setIndexName(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_13
    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setUniqueIndexName(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_14
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setForeignAutoRefresh(Z)V

    goto/16 :goto_3

    :pswitch_15
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setMaxForeignAutoRefreshLevel(I)V

    goto/16 :goto_3

    :pswitch_16
    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v3, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setPersisterClass(Ljava/lang/Class;)V

    goto/16 :goto_3

    :pswitch_17
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setAllowGeneratedIdInsert(Z)V

    goto/16 :goto_3

    :pswitch_18
    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setColumnDefinition(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_19
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setForeignAutoCreate(Z)V

    goto/16 :goto_3

    :pswitch_1a
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setVersion(Z)V

    goto/16 :goto_3

    :pswitch_1b
    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setForeignColumnName(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    :cond_5
    move-object v0, v3

    goto/16 :goto_1

    :cond_6
    sget v1, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->f:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->f:I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 p0, 0x0

    :cond_1
    return-object p0
.end method

.method private static a()[I
    .locals 7

    const/4 v4, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v0, "org.apache.harmony.lang.annotation.AnnotationFactory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->a:Ljava/lang/Class;

    const-string/jumbo v0, "org.apache.harmony.lang.annotation.AnnotationMember"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->c:Ljava/lang/Class;

    const-string/jumbo v0, "[Lorg.apache.harmony.lang.annotation.AnnotationMember;"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v0, "org.apache.harmony.lang.annotation.AnnotationMember"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->c:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->a:Ljava/lang/Class;

    const-string/jumbo v3, "elements"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->b:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    sget-object v0, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->c:Ljava/lang/Class;

    const-string/jumbo v3, "name"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->d:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    sget-object v0, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->c:Ljava/lang/Class;

    const-string/jumbo v3, "value"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->e:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-class v0, Lcom/j256/ormlite/android/DatabaseTableConfigUtil$DatabaseFieldSample;

    const-string/jumbo v3, "field"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    const-class v3, Lcom/j256/ormlite/field/DatabaseField;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/field/DatabaseField;

    invoke-static {v0}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    sget-object v5, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->a:Ljava/lang/Class;

    if-eq v3, v5, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v2

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v0, v2

    goto :goto_0

    :cond_0
    :try_start_2
    sget-object v3, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v3, v1, :cond_2

    :cond_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    check-cast v0, [Ljava/lang/Object;

    array-length v1, v0

    new-array v3, v1, [I

    const/4 v1, 0x0

    move v5, v1

    :goto_1
    array-length v1, v0

    if-ge v5, v1, :cond_1f

    sget-object v1, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->d:Ljava/lang/reflect/Field;

    aget-object v6, v0, v5

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v6, "columnName"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v1, v4

    :goto_2
    aput v1, v3, v5

    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_1

    :cond_3
    const-string/jumbo v6, "dataType"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v1, 0x2

    goto :goto_2

    :cond_4
    const-string/jumbo v6, "defaultValue"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v1, 0x3

    goto :goto_2

    :cond_5
    const-string/jumbo v6, "width"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v1, 0x4

    goto :goto_2

    :cond_6
    const-string/jumbo v6, "canBeNull"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v1, 0x5

    goto :goto_2

    :cond_7
    const-string/jumbo v6, "id"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v1, 0x6

    goto :goto_2

    :cond_8
    const-string/jumbo v6, "generatedId"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v1, 0x7

    goto :goto_2

    :cond_9
    const-string/jumbo v6, "generatedIdSequence"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/16 v1, 0x8

    goto :goto_2

    :cond_a
    const-string/jumbo v6, "foreign"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    const/16 v1, 0x9

    goto :goto_2

    :cond_b
    const-string/jumbo v6, "useGetSet"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    const/16 v1, 0xa

    goto :goto_2

    :cond_c
    const-string/jumbo v6, "unknownEnumName"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v1, 0xb

    goto :goto_2

    :cond_d
    const-string/jumbo v6, "throwIfNull"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    const/16 v1, 0xc

    goto/16 :goto_2

    :cond_e
    const-string/jumbo v6, "persisted"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    const/16 v1, 0xd

    goto/16 :goto_2

    :cond_f
    const-string/jumbo v6, "format"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    const/16 v1, 0xe

    goto/16 :goto_2

    :cond_10
    const-string/jumbo v6, "unique"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    const/16 v1, 0xf

    goto/16 :goto_2

    :cond_11
    const-string/jumbo v6, "uniqueCombo"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    const/16 v1, 0x10

    goto/16 :goto_2

    :cond_12
    const-string/jumbo v6, "index"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    const/16 v1, 0x11

    goto/16 :goto_2

    :cond_13
    const-string/jumbo v6, "uniqueIndex"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    const/16 v1, 0x12

    goto/16 :goto_2

    :cond_14
    const-string/jumbo v6, "indexName"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    const/16 v1, 0x13

    goto/16 :goto_2

    :cond_15
    const-string/jumbo v6, "uniqueIndexName"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    const/16 v1, 0x14

    goto/16 :goto_2

    :cond_16
    const-string/jumbo v6, "foreignAutoRefresh"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    const/16 v1, 0x15

    goto/16 :goto_2

    :cond_17
    const-string/jumbo v6, "maxForeignAutoRefreshLevel"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    const/16 v1, 0x16

    goto/16 :goto_2

    :cond_18
    const-string/jumbo v6, "persisterClass"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    const/16 v1, 0x17

    goto/16 :goto_2

    :cond_19
    const-string/jumbo v6, "allowGeneratedIdInsert"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    const/16 v1, 0x18

    goto/16 :goto_2

    :cond_1a
    const-string/jumbo v6, "columnDefinition"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    const/16 v1, 0x19

    goto/16 :goto_2

    :cond_1b
    const-string/jumbo v6, "foreignAutoCreate"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    const/16 v1, 0x1a

    goto/16 :goto_2

    :cond_1c
    const-string/jumbo v6, "version"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    const/16 v1, 0x1b

    goto/16 :goto_2

    :cond_1d
    const-string/jumbo v6, "foreignColumnName"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    const/16 v1, 0x1c

    goto/16 :goto_2

    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Could not find support for DatabaseField "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3

    :catch_3
    move-exception v0

    move-object v0, v2

    goto/16 :goto_0

    :cond_1f
    move-object v0, v3

    goto/16 :goto_0
.end method

.method public static fromClass(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/table/DatabaseTableConfig;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/j256/ormlite/table/DatabaseTableConfig",
            "<TT;>;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/j256/ormlite/support/ConnectionSource;->getDatabaseType()Lcom/j256/ormlite/db/DatabaseType;

    move-result-object v2

    invoke-static {p1}, Lcom/j256/ormlite/table/DatabaseTableConfig;->extractTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p1

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    array-length v6, v5

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v6, :cond_1

    aget-object v7, v5, v0

    invoke-static {v2, v3, v7}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->a(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/lang/reflect/Field;)Lcom/j256/ormlite/field/DatabaseFieldConfig;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isPersisted()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_3
    new-instance v0, Lcom/j256/ormlite/table/DatabaseTableConfig;

    invoke-direct {v0, p1, v3, v4}, Lcom/j256/ormlite/table/DatabaseTableConfig;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_2
.end method

.method public static getWorkedC()I
    .locals 1

    sget v0, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->f:I

    return v0
.end method

.class public Lcom/alibaba/fastjson/parser/deserializer/ThrowableDeserializer;
.super Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;)V

    return-void
.end method

.method private createException(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/Throwable;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p3}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v5

    array-length v6, v5

    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v1, v5, v4

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    if-nez v7, :cond_0

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    :goto_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move-object v3, v2

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const-class v8, Ljava/lang/String;

    if-ne v7, v8, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_6

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const-class v8, Ljava/lang/String;

    if-ne v7, v8, :cond_6

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const-class v8, Ljava/lang/Throwable;

    if-ne v7, v8, :cond_6

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    :goto_2
    return-object v0

    :cond_3
    if-eqz v2, :cond_4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    goto :goto_2

    :cond_4
    if-eqz v3, :cond_5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    move-object v1, v2

    move-object v2, v3

    goto :goto_1
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getResolveStatus()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    :cond_0
    const/4 v4, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_11

    instance-of v2, p2, Ljava/lang/Class;

    if-eqz v2, :cond_11

    check-cast p2, Ljava/lang/Class;

    const-class v2, Ljava/lang/Throwable;

    invoke-virtual {v2, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_11

    :goto_0
    const/4 v5, 0x0

    const/4 v2, 0x0

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move-object v3, p2

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v7

    const/16 v8, 0xd

    if-ne v7, v8, :cond_5

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken(I)V

    :goto_2
    if-nez v3, :cond_f

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v5, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    if-eqz v2, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    :cond_3
    return-object v0

    :cond_4
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v7

    const/16 v8, 0x10

    if-ne v7, v8, :cond_6

    sget-object v7, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_6
    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextTokenWithColon(I)V

    const-string/jumbo v7, "@type"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_7

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringVal()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken(I)V

    move-object v3, v4

    move-object v4, v5

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    :goto_4
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v5

    const/16 v7, 0x10

    if-eq v5, v7, :cond_10

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v5

    const/16 v7, 0xd

    if-ne v5, v7, :cond_e

    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken(I)V

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    goto :goto_2

    :cond_7
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const-string/jumbo v7, "message"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v1

    const/16 v5, 0x8

    if-ne v1, v5, :cond_9

    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V

    move-object v9, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v1

    move-object v1, v9

    goto :goto_4

    :cond_9
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v1

    const/4 v5, 0x4

    if-ne v1, v5, :cond_a

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringVal()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_a
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    const-string/jumbo v7, "cause"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const/4 v1, 0x0

    const-string/jumbo v4, "cause"

    invoke-virtual {p0, p1, v1, v4}, Lcom/alibaba/fastjson/parser/deserializer/ThrowableDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    move-object v4, v5

    move-object v9, v3

    move-object v3, v1

    move-object v1, v2

    move-object v2, v9

    goto :goto_4

    :cond_c
    const-string/jumbo v7, "stackTrace"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    const-class v1, [Ljava/lang/StackTraceElement;

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/StackTraceElement;

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    goto :goto_4

    :cond_d
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_4

    :cond_e
    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    goto/16 :goto_1

    :cond_f
    :try_start_0
    invoke-direct {p0, v5, v4, v3}, Lcom/alibaba/fastjson/parser/deserializer/ThrowableDeserializer;->createException(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v5, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v2, "create instance error"

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_10
    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    goto/16 :goto_1

    :cond_11
    move-object p2, v1

    goto/16 :goto_0
.end method

.method public getFastMatchToken()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

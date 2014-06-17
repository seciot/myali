.class public Lcom/alibaba/fastjson/parser/deserializer/ColorDeserializer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/AutowiredObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/ColorDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/ColorDeserializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/ColorDeserializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/ColorDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/ColorDeserializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
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

    const/16 v10, 0x10

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v2

    if-eq v2, v10, :cond_0

    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V

    move v2, v1

    move v3, v1

    move v4, v1

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V

    new-instance v0, Ljava/awt/Color;

    invoke-direct {v0, v4, v3, v2, v1}, Ljava/awt/Color;-><init>(IIII)V

    return-object v0

    :cond_2
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v5

    if-ne v5, v9, :cond_3

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringVal()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextTokenWithColon(I)V

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v5

    if-ne v5, v8, :cond_4

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->intValue()I

    move-result v5

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V

    const-string/jumbo v7, "r"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v4, v5

    :goto_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v5

    if-ne v5, v10, :cond_1

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken(I)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const-string/jumbo v7, "g"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    move v3, v5

    goto :goto_1

    :cond_6
    const-string/jumbo v7, "b"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    move v2, v5

    goto :goto_1

    :cond_7
    const-string/jumbo v1, "alpha"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v5

    goto :goto_1

    :cond_8
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "syntax error, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAutowiredFor()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/awt/Color;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getFastMatchToken()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

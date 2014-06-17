.class public Lcom/alibaba/fastjson/parser/deserializer/PointDeserializer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/AutowiredObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/PointDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/PointDeserializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/PointDeserializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/PointDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/PointDeserializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
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

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v1, 0x0

    const/16 v6, 0x10

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken(I)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v2

    if-eq v2, v6, :cond_1

    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V

    move v2, v1

    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_3

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V

    new-instance v0, Ljava/awt/Point;

    invoke-direct {v0, v2, v1}, Ljava/awt/Point;-><init>(II)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v3

    if-ne v3, v8, :cond_5

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringVal()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v3, "@type"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "java.awt.Point"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->acceptType(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextTokenWithColon(I)V

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v3

    if-ne v3, v7, :cond_6

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->intValue()I

    move-result v3

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    move v2, v3

    :goto_2
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v3

    if-ne v3, v6, :cond_2

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken(I)V

    goto :goto_1

    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "syntax error : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->tokenName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    const-string/jumbo v1, "y"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v3

    goto :goto_2

    :cond_8
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "syntax error, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    const-class v0, Ljava/awt/Point;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getFastMatchToken()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

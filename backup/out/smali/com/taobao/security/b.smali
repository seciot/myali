.class public final Lcom/taobao/security/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/taobao/security/b;->a:Ljava/util/List;

    new-instance v1, Lcom/taobao/security/b$a;

    invoke-direct {v1, v2}, Lcom/taobao/security/b$a;-><init>(B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/taobao/security/b;->a:Ljava/util/List;

    new-instance v1, Lcom/taobao/security/b$b;

    invoke-direct {v1, v2}, Lcom/taobao/security/b$b;-><init>(B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/taobao/security/b;->a:Ljava/util/List;

    new-instance v1, Lcom/taobao/security/b$c;

    invoke-direct {v1, v2}, Lcom/taobao/security/b$c;-><init>(B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/taobao/security/c;Ljava/lang/String;Lcom/taobao/security/e;)Z
    .locals 6

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_2

    const-string/jumbo v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_0

    new-instance v3, Lcom/taobao/security/g;

    invoke-direct {v3, v0}, Lcom/taobao/security/g;-><init>([Ljava/lang/String;)V

    move v2, v1

    :goto_2
    sget-object v0, Lcom/taobao/security/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    sget-object v0, Lcom/taobao/security/b;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/security/Filter;

    invoke-interface {v0, p0, v3}, Lcom/taobao/security/Filter;->filter(Lcom/taobao/security/c;Lcom/taobao/security/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_3
    const/16 v3, 0x7c

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const v5, 0x7fffffff

    if-ge v4, v5, :cond_4

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x2

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_5

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_1

    :cond_6
    invoke-virtual {v3}, Lcom/taobao/security/g;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/taobao/security/e;->a:Ljava/lang/String;

    const/4 v1, 0x1

    goto :goto_0
.end method

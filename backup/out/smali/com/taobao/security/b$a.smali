.class final Lcom/taobao/security/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/security/Filter;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/taobao/security/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final filter(Lcom/taobao/security/c;Lcom/taobao/security/g;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v2, -0x1

    if-eqz p1, :cond_0

    iget v1, p1, Lcom/taobao/security/c;->a:I

    if-eq v1, v2, :cond_0

    iget v1, p1, Lcom/taobao/security/c;->b:I

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x20

    invoke-virtual {p2, v1}, Lcom/taobao/security/g;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget v2, p1, Lcom/taobao/security/c;->a:I

    if-lt v1, v2, :cond_2

    iget v2, p1, Lcom/taobao/security/c;->b:I

    if-le v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

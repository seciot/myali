.class public final Lcom/taobao/security/c;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:I

.field c:[I

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/taobao/security/c;->a:I

    iput v1, p0, Lcom/taobao/security/c;->b:I

    iput-object v0, p0, Lcom/taobao/security/c;->c:[I

    iput-object v0, p0, Lcom/taobao/security/c;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/taobao/security/c;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/taobao/security/c;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/taobao/security/c;->g:Ljava/lang/String;

    iput v0, p0, Lcom/taobao/security/c;->a:I

    iput v0, p0, Lcom/taobao/security/c;->b:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/taobao/security/c;->g:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/taobao/security/c;->g:Ljava/lang/String;

    const-string/jumbo v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    aget-object v1, v0, v3

    invoke-static {v1}, Lcom/taobao/security/f;->a(Ljava/lang/String;)[I

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v2, v1

    if-lt v2, v5, :cond_2

    aget v2, v1, v3

    mul-int/lit16 v2, v2, 0x3e8

    iput v2, p0, Lcom/taobao/security/c;->a:I

    aget v1, v1, v4

    mul-int/lit16 v1, v1, 0x3e8

    iput v1, p0, Lcom/taobao/security/c;->b:I

    :cond_2
    aget-object v1, v0, v4

    iput-object v1, p0, Lcom/taobao/security/c;->d:Ljava/lang/String;

    aget-object v1, v0, v5

    invoke-static {v1}, Lcom/taobao/security/f;->a(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/security/c;->c:[I

    const/4 v1, 0x3

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/taobao/security/c;->e:Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/taobao/security/c;->f:Ljava/lang/String;

    goto :goto_0
.end method

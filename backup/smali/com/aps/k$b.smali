.class Lcom/aps/k$b;
.super Lorg/xml/sax/helpers/DefaultHandler;


# instance fields
.field public a:Ljava/lang/String;

.field final synthetic b:Lcom/aps/k;

.field private c:Z


# direct methods
.method private constructor <init>(Lcom/aps/k;)V
    .locals 1

    iput-object p1, p0, Lcom/aps/k$b;->b:Lcom/aps/k;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/aps/k$b;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aps/k$b;->c:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/aps/k;Lcom/aps/k$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/aps/k$b;-><init>(Lcom/aps/k;)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    iget-boolean v0, p0, Lcom/aps/k$b;->c:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/k$b;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "sres"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aps/k$b;->c:Z

    :cond_0
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    const-string/jumbo v0, "sres"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aps/k$b;->c:Z

    :cond_0
    return-void
.end method

.class public Lcom/aps/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:D

.field private c:D

.field private d:F

.field private e:F

.field private f:F

.field private g:J

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/aps/c;->a:Ljava/lang/String;

    iput-wide v2, p0, Lcom/aps/c;->b:D

    iput-wide v2, p0, Lcom/aps/c;->c:D

    iput v1, p0, Lcom/aps/c;->d:F

    iput v1, p0, Lcom/aps/c;->e:F

    iput v1, p0, Lcom/aps/c;->f:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aps/c;->g:J

    const-string/jumbo v0, "new"

    iput-object v0, p0, Lcom/aps/c;->h:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/aps/c;->i:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/aps/c;->j:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/aps/c;->k:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/aps/c;->l:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/aps/c;->m:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/aps/c;->n:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/aps/c;->o:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/aps/c;->p:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/aps/c;->q:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/aps/c;->r:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aps/c;->s:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public a()D
    .locals 2

    iget-wide v0, p0, Lcom/aps/c;->b:D

    return-wide v0
.end method

.method public a(D)V
    .locals 0

    iput-wide p1, p0, Lcom/aps/c;->b:D

    return-void
.end method

.method public a(F)V
    .locals 0

    iput p1, p0, Lcom/aps/c;->d:F

    return-void
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/aps/c;->g:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aps/c;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/aps/c;->s:Lorg/json/JSONObject;

    return-void
.end method

.method public b()D
    .locals 2

    iget-wide v0, p0, Lcom/aps/c;->c:D

    return-wide v0
.end method

.method public b(D)V
    .locals 0

    iput-wide p1, p0, Lcom/aps/c;->c:D

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aps/c;->h:Ljava/lang/String;

    return-void
.end method

.method public c()F
    .locals 1

    iget v0, p0, Lcom/aps/c;->d:F

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aps/c;->i:Ljava/lang/String;

    return-void
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/aps/c;->g:J

    return-wide v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aps/c;->j:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aps/c;->h:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aps/c;->k:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aps/c;->i:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aps/c;->l:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aps/c;->j:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aps/c;->m:Ljava/lang/String;

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aps/c;->k:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aps/c;->n:Ljava/lang/String;

    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aps/c;->l:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aps/c;->o:Ljava/lang/String;

    return-void
.end method

.method public j()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/aps/c;->s:Lorg/json/JSONObject;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aps/c;->p:Ljava/lang/String;

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aps/c;->q:Ljava/lang/String;

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aps/c;->r:Ljava/lang/String;

    return-void
.end method

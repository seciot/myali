.class public Lcom/ut/device/a;
.super Ljava/lang/Object;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:I

.field private N:I

.field private O:Ljava/lang/String;

.field private P:J

.field private Q:J

.field private timezone:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ut/device/a;->w:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ut/device/a;->x:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ut/device/a;->y:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ut/device/a;->z:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ut/device/a;->A:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ut/device/a;->B:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ut/device/a;->C:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ut/device/a;->D:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ut/device/a;->timezone:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ut/device/a;->E:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ut/device/a;->F:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ut/device/a;->G:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ut/device/a;->H:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ut/device/a;->I:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ut/device/a;->J:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ut/device/a;->K:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ut/device/a;->L:Ljava/lang/String;

    iput v1, p0, Lcom/ut/device/a;->M:I

    iput v1, p0, Lcom/ut/device/a;->N:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ut/device/a;->O:Ljava/lang/String;

    iput-wide v2, p0, Lcom/ut/device/a;->P:J

    iput-wide v2, p0, Lcom/ut/device/a;->Q:J

    return-void
.end method


# virtual methods
.method a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/ut/device/a;->Q:J

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ut/device/a;->w:Ljava/lang/String;

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/ut/device/a;->M:I

    return-void
.end method

.method b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/ut/device/a;->P:J

    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ut/device/a;->x:Ljava/lang/String;

    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/ut/device/a;->N:I

    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ut/device/a;->y:Ljava/lang/String;

    return-void
.end method

.method d()J
    .locals 2

    iget-wide v0, p0, Lcom/ut/device/a;->Q:J

    return-wide v0
.end method

.method d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ut/device/a;->z:Ljava/lang/String;

    return-void
.end method

.method e()J
    .locals 2

    iget-wide v0, p0, Lcom/ut/device/a;->P:J

    return-wide v0
.end method

.method e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ut/device/a;->A:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ut/device/a;->w:Ljava/lang/String;

    return-object v0
.end method

.method f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ut/device/a;->B:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ut/device/a;->x:Ljava/lang/String;

    return-object v0
.end method

.method g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ut/device/a;->C:Ljava/lang/String;

    return-void
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ut/device/a;->A:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ut/device/a;->O:Ljava/lang/String;

    return-object v0
.end method

.method h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ut/device/a;->D:Ljava/lang/String;

    return-void
.end method

.method i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ut/device/a;->timezone:Ljava/lang/String;

    return-void
.end method

.method j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ut/device/a;->E:Ljava/lang/String;

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ut/device/a;->F:Ljava/lang/String;

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ut/device/a;->G:Ljava/lang/String;

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ut/device/a;->H:Ljava/lang/String;

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ut/device/a;->I:Ljava/lang/String;

    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ut/device/a;->J:Ljava/lang/String;

    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ut/device/a;->K:Ljava/lang/String;

    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ut/device/a;->L:Ljava/lang/String;

    return-void
.end method

.method r(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ut/device/a;->O:Ljava/lang/String;

    return-void
.end method

.class final Lcom/alipay/mobile/onsitepay/payee/i;
.super Ljava/lang/Object;
.source "FacePayeeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 843
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payee/i;->a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 843
    invoke-direct {p0, p1}, Lcom/alipay/mobile/onsitepay/payee/i;-><init>(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 846
    move v0, v1

    .line 848
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/alipay/mobile/onsitepay/payee/i;->a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;

    iget-boolean v3, v3, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->o:Z

    if-nez v3, :cond_4

    .line 850
    const-wide/16 v3, 0x64

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 851
    iget-object v3, p0, Lcom/alipay/mobile/onsitepay/payee/i;->a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;

    iget-boolean v3, v3, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->l:Z

    if-eqz v3, :cond_4

    .line 852
    iget-object v3, p0, Lcom/alipay/mobile/onsitepay/payee/i;->a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;

    iget-object v3, v3, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->k:Lcom/alipay/mobile/onsitepay/payee/DrawInduceView;

    invoke-virtual {v3}, Lcom/alipay/mobile/onsitepay/payee/DrawInduceView;->getonDrawComplete()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 855
    iget-object v3, p0, Lcom/alipay/mobile/onsitepay/payee/i;->a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;

    iget v3, v3, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->p:I

    if-ne v3, v5, :cond_1

    .line 859
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/i;->a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;

    iget-boolean v0, v0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->m:Z

    if-eqz v0, :cond_2

    .line 861
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/i;->a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;

    iget-object v3, p0, Lcom/alipay/mobile/onsitepay/payee/i;->a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;

    iget-object v3, v3, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->k:Lcom/alipay/mobile/onsitepay/payee/DrawInduceView;

    invoke-virtual {v3}, Lcom/alipay/mobile/onsitepay/payee/DrawInduceView;->setReceviceData()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->p:I

    .line 862
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/i;->a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;

    iput-boolean v1, v0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->m:Z

    .line 863
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/i;->a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;

    iput v1, v0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->r:I

    move v0, v2

    .line 873
    :goto_1
    iget-object v3, p0, Lcom/alipay/mobile/onsitepay/payee/i;->a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;

    iput v1, v3, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->q:I

    .line 875
    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/onsitepay/payee/i;->a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;

    iget v3, v3, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->p:I

    if-eq v3, v5, :cond_0

    .line 881
    iget-object v3, p0, Lcom/alipay/mobile/onsitepay/payee/i;->a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;

    iget-object v4, p0, Lcom/alipay/mobile/onsitepay/payee/i;->a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;

    iget v4, v4, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->q:I

    invoke-virtual {v3, v4, v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->a(IZ)V

    .line 882
    iget-object v3, p0, Lcom/alipay/mobile/onsitepay/payee/i;->a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;

    iget v4, v3, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->q:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->q:I

    .line 883
    iget-object v3, p0, Lcom/alipay/mobile/onsitepay/payee/i;->a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;

    iget v4, v3, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->p:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->p:I

    goto :goto_0

    .line 866
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/i;->a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;

    iget-boolean v0, v0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->s:Z

    if-eqz v0, :cond_3

    .line 867
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/i;->a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;

    iget-object v3, p0, Lcom/alipay/mobile/onsitepay/payee/i;->a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;

    iget-object v3, v3, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->k:Lcom/alipay/mobile/onsitepay/payee/DrawInduceView;

    invoke-virtual {v3}, Lcom/alipay/mobile/onsitepay/payee/DrawInduceView;->setFirstData()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->p:I

    .line 868
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/i;->a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;

    iput-boolean v1, v0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->s:Z

    move v0, v1

    goto :goto_1

    .line 870
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/i;->a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;

    iget-object v3, p0, Lcom/alipay/mobile/onsitepay/payee/i;->a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;

    iget-object v4, p0, Lcom/alipay/mobile/onsitepay/payee/i;->a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;

    iget v4, v4, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->r:I

    invoke-static {v3, v4}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->b(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->p:I

    move v0, v1

    goto :goto_1

    .line 886
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/i;->a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;

    iput-boolean v2, v0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->n:Z

    .line 887
    return-void
.end method

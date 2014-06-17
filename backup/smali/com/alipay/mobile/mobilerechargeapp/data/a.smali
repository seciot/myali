.class final Lcom/alipay/mobile/mobilerechargeapp/data/a;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/mobilerechargeapp/data/ContactOperation;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/mobilerechargeapp/data/ContactOperation;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/data/a;->a:Lcom/alipay/mobile/mobilerechargeapp/data/ContactOperation;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/mobilerechargeapp/data/ContactOperation;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/data/a;-><init>(Lcom/alipay/mobile/mobilerechargeapp/data/ContactOperation;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/data/a;->a:Lcom/alipay/mobile/mobilerechargeapp/data/ContactOperation;

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/data/ContactOperation;->a(Lcom/alipay/mobile/mobilerechargeapp/data/ContactOperation;)Lcom/alipay/mobile/mobilerechargeapp/data/ContactOperation$LoadStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/data/a;->a:Lcom/alipay/mobile/mobilerechargeapp/data/ContactOperation;

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/data/ContactOperation;->a(Lcom/alipay/mobile/mobilerechargeapp/data/ContactOperation;)Lcom/alipay/mobile/mobilerechargeapp/data/ContactOperation$LoadStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/mobilerechargeapp/data/ContactOperation$LoadStateListener;->a()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/data/a;->a:Lcom/alipay/mobile/mobilerechargeapp/data/ContactOperation;

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/data/ContactOperation;->b()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/data/a;->a:Lcom/alipay/mobile/mobilerechargeapp/data/ContactOperation;

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/data/ContactOperation;->a(Lcom/alipay/mobile/mobilerechargeapp/data/ContactOperation;)Lcom/alipay/mobile/mobilerechargeapp/data/ContactOperation$LoadStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/data/a;->a:Lcom/alipay/mobile/mobilerechargeapp/data/ContactOperation;

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/data/ContactOperation;->a(Lcom/alipay/mobile/mobilerechargeapp/data/ContactOperation;)Lcom/alipay/mobile/mobilerechargeapp/data/ContactOperation$LoadStateListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/mobilerechargeapp/data/ContactOperation$LoadStateListener;->a(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method protected final bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.class final Lcom/alipay/mobile/phonecashier/service/b;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/phonecashier/service/b;->a:Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/b;->a:Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;

    invoke-static {v0}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->a(Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/b;->a:Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;

    invoke-static {v0}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->b(Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;)I

    const-string/jumbo v0, "isClear"

    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/b;->a:Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;

    invoke-static {v0}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->c(Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;)Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;

    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/b;->a:Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;

    invoke-static {v0}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->d(Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;)Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/b;->a:Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;

    invoke-static {v0}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->e(Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;)Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/b;->a:Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/phonecashier/service/b;->a:Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;

    invoke-static {v1}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->f(Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/phonecashier/service/b;->a:Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;

    new-instance v2, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTask;

    iget-object v3, p0, Lcom/alipay/mobile/phonecashier/service/b;->a:Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;

    invoke-static {v3}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->f(Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/phonecashier/service/b;->a:Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;

    invoke-static {v4}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->g(Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;)Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTask;-><init>(Lcom/alipay/mobile/framework/MicroApplicationContext;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;)V

    invoke-static {v1, v2}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->a(Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;Lcom/alipay/mobile/phonecashier/service/PhoneCashierTask;)Lcom/alipay/mobile/phonecashier/service/PhoneCashierTask;

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/b;->a:Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;

    invoke-static {v0}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->i(Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;)Lcom/alipay/mobile/phonecashier/service/PhoneCashierTask;

    move-result-object v0

    if-eqz v0, :cond_0

    sput-boolean v5, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->a:Z

    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/b;->a:Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;

    invoke-static {v0}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->i(Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;)Lcom/alipay/mobile/phonecashier/service/PhoneCashierTask;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Boolean;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/b;->a:Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;

    invoke-static {v0}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->c(Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;)Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;

    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/b;->a:Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;

    invoke-static {v0}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->d(Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;)Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/b;->a:Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;

    invoke-static {v0}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->e(Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;)Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/phonecashier/service/b;->a:Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;

    invoke-static {v1}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->h(Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;)Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/phonecashier/service/b;->a:Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;

    new-instance v2, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTask;

    iget-object v3, p0, Lcom/alipay/mobile/phonecashier/service/b;->a:Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;

    invoke-static {v3}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->h(Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;)Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/phonecashier/service/b;->a:Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;

    invoke-static {v4}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->g(Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;)Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTask;-><init>(Lcom/alipay/mobile/framework/MicroApplicationContext;Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;)V

    invoke-static {v1, v2}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->a(Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;Lcom/alipay/mobile/phonecashier/service/PhoneCashierTask;)Lcom/alipay/mobile/phonecashier/service/PhoneCashierTask;

    goto :goto_1
.end method

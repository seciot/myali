.class final Lcom/alipay/mobile/alipassapp/ui/af;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/af;->d:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    iput-object p2, p0, Lcom/alipay/mobile/alipassapp/ui/af;->a:Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;

    iput-object p3, p0, Lcom/alipay/mobile/alipassapp/ui/af;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/alipay/mobile/alipassapp/ui/af;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/af;->d:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->dismissProgressDialog()V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/af;->a:Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/af;->a:Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;

    iget-boolean v0, v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;->success:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/af;->d:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->c:Lcom/alipay/mobile/alipassapp/ui/bb;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/af;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/bb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/af;->d:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->l(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)V

    iget-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/af;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/af;->d:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-static {}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->o()V

    :cond_0
    return-void
.end method

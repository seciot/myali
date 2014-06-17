.class final Lcom/alipay/mobile/alipassapp/ui/ae;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/ae;->c:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    iput-object p2, p0, Lcom/alipay/mobile/alipassapp/ui/ae;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/alipay/mobile/alipassapp/ui/ae;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ae;->c:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->f(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)Lcom/alipay/mobile/alipassapp/biz/common/d;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/ae;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/alipay/mobile/alipassapp/ui/ae;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/alipassapp/biz/common/d;->a(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/ae;->c:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    check-cast v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/ae;->a:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/alipay/mobile/alipassapp/ui/ae;->b:Z

    invoke-virtual {v1, v0, v2, v3}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;Ljava/lang/String;Z)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/ae;->c:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    iget-boolean v2, p0, Lcom/alipay/mobile/alipassapp/ui/ae;->b:Z

    invoke-virtual {v1, v3, v3, v2}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;Ljava/lang/String;Z)V

    check-cast v0, Lcom/alipay/mobile/common/rpc/RpcException;

    throw v0
.end method

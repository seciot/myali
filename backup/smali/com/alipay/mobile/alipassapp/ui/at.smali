.class final Lcom/alipay/mobile/alipassapp/ui/at;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/as;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/as;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/at;->a:Lcom/alipay/mobile/alipassapp/ui/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/at;->a:Lcom/alipay/mobile/alipassapp/ui/as;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/as;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->f(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)Lcom/alipay/mobile/alipassapp/biz/common/d;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/at;->a:Lcom/alipay/mobile/alipassapp/ui/as;

    iget-object v1, v1, Lcom/alipay/mobile/alipassapp/ui/as;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->j()Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/at;->a:Lcom/alipay/mobile/alipassapp/ui/as;

    iget-object v2, v2, Lcom/alipay/mobile/alipassapp/ui/as;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->d()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/alipassapp/biz/common/d;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;Z)Lcom/alipay/mobile/alipassapp/biz/model/a;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/mobile/alipassapp/biz/model/a;->b:Z

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/at;->a:Lcom/alipay/mobile/alipassapp/ui/as;

    iget-object v1, v1, Lcom/alipay/mobile/alipassapp/ui/as;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->b(Lcom/alipay/mobile/alipassapp/biz/model/a;)V

    return-void
.end method

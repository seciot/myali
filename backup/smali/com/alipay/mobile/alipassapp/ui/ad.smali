.class final Lcom/alipay/mobile/alipassapp/ui/ad;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/ad;->c:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    iput-object p2, p0, Lcom/alipay/mobile/alipassapp/ui/ad;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/alipassapp/ui/ad;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ad;->c:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->f(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)Lcom/alipay/mobile/alipassapp/biz/common/d;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/ad;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/ad;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/alipassapp/biz/common/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/ad;->c:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/ad;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/ad;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

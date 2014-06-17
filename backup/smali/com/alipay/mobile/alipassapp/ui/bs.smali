.class final Lcom/alipay/mobile/alipassapp/ui/bs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/security/BindPhoneCallBack;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/br;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/br;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/bs;->a:Lcom/alipay/mobile/alipassapp/ui/br;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final BindPhoneResult(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/bs;->a:Lcom/alipay/mobile/alipassapp/ui/br;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/br;->a:Lcom/alipay/mobile/alipassapp/ui/bq;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/bq;->c:Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/bs;->a:Lcom/alipay/mobile/alipassapp/ui/br;

    iget-object v1, v1, Lcom/alipay/mobile/alipassapp/ui/br;->a:Lcom/alipay/mobile/alipassapp/ui/bq;

    iget-object v1, v1, Lcom/alipay/mobile/alipassapp/ui/bq;->a:Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/bs;->a:Lcom/alipay/mobile/alipassapp/ui/br;

    iget-object v2, v2, Lcom/alipay/mobile/alipassapp/ui/br;->a:Lcom/alipay/mobile/alipassapp/ui/bq;

    iget-object v2, v2, Lcom/alipay/mobile/alipassapp/ui/bq;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->a(Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

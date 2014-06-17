.class final Lcom/alipay/mobile/alipassapp/ui/cm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity_;Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/cm;->c:Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/alipassapp/ui/cm;->a:Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;

    iput-object p3, p0, Lcom/alipay/mobile/alipassapp/ui/cm;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/cm;->c:Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/cm;->a:Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/cm;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity_;->a(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity_;Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;Ljava/lang/String;)V

    return-void
.end method

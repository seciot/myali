.class final Lcom/alipay/mobile/alipassapp/ui/ch;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/kabaoprod/biz/mwallet/card/result/CardPreviewResult;

.field final synthetic b:Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity_;Lcom/alipay/kabaoprod/biz/mwallet/card/result/CardPreviewResult;Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/ch;->d:Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/alipassapp/ui/ch;->a:Lcom/alipay/kabaoprod/biz/mwallet/card/result/CardPreviewResult;

    iput-object p3, p0, Lcom/alipay/mobile/alipassapp/ui/ch;->b:Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;

    iput-object p4, p0, Lcom/alipay/mobile/alipassapp/ui/ch;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ch;->d:Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/ch;->a:Lcom/alipay/kabaoprod/biz/mwallet/card/result/CardPreviewResult;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/ch;->b:Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/ch;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity_;->a(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity_;Lcom/alipay/kabaoprod/biz/mwallet/card/result/CardPreviewResult;Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;Ljava/lang/String;)V

    return-void
.end method

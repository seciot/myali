.class final Lcom/alipay/mobile/alipassapp/ui/cl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity_;Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/cl;->c:Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/alipassapp/ui/cl;->a:Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;

    iput-object p3, p0, Lcom/alipay/mobile/alipassapp/ui/cl;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/cl;->c:Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/cl;->a:Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/cl;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity_;->a(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity_;Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;Ljava/lang/String;)V

    return-void
.end method

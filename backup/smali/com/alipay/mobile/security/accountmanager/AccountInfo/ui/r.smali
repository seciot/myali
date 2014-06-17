.class final Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:I

.field final synthetic c:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity_;Ljava/util/Map;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/r;->c:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/r;->a:Ljava/util/Map;

    iput p3, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/r;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/r;->c:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/r;->a:Ljava/util/Map;

    iget v2, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/r;->b:I

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity_;->a(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity_;Ljava/util/Map;I)V

    return-void
.end method

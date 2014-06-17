.class final Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

.field final synthetic c:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity_;Ljava/lang/String;Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/o;->c:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/o;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/o;->b:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/o;->c:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/o;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/o;->b:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity_;->a(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity_;Ljava/lang/String;Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;)V

    return-void
.end method

.class Lcom/alipay/mobile/nfc/ui/NFCMainActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$1;->a:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

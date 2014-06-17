.class final Lcom/alipay/mobile/alipassapp/ui/cr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/cp;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/cp;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/cr;->a:Lcom/alipay/mobile/alipassapp/ui/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/cr;->a:Lcom/alipay/mobile/alipassapp/ui/cp;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/cp;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->a(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;)Lcom/alipay/kabaoprod/core/model/model/RemindInfo;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/kabaoprod/core/model/model/RemindInfo;->setRemindSet(J)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/cr;->a:Lcom/alipay/mobile/alipassapp/ui/cp;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/cp;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/cr;->a:Lcom/alipay/mobile/alipassapp/ui/cp;

    iget-object v1, v1, Lcom/alipay/mobile/alipassapp/ui/cp;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->a(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;)Lcom/alipay/kabaoprod/core/model/model/RemindInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->a(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;Lcom/alipay/kabaoprod/core/model/model/RemindInfo;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

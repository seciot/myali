.class final Lcom/alipay/mobile/alipassapp/ui/co;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/co;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/co;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->a(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;)Lcom/alipay/kabaoprod/core/model/model/RemindInfo;

    move-result-object v1

    if-eqz p2, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alipay/kabaoprod/core/model/model/RemindInfo;->setRemindSwitch(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/co;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->e(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;)Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    move-result-object v1

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/co;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->f(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;)Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    move-result-object v1

    if-eqz p2, :cond_2

    const/16 v0, 0x11

    :goto_2
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setType(I)V

    return-void

    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1

    :cond_2
    const/16 v0, 0x10

    goto :goto_2
.end method

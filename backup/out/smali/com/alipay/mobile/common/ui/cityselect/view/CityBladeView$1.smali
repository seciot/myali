.class Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView$1;->this$0:Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView$1;->this$0:Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;

    #getter for: Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->c:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->access$000(Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView$1;->this$0:Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;

    #getter for: Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->c:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->access$000(Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

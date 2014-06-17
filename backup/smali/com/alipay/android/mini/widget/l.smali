.class final Lcom/alipay/android/mini/widget/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/window/MiniPayActivity;

.field final synthetic b:Lcom/alipay/android/mini/window/UIFormDialog$DialogButton;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/MiniPayActivity;Lcom/alipay/android/mini/window/UIFormDialog$DialogButton;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/widget/l;->a:Lcom/alipay/android/mini/window/MiniPayActivity;

    iput-object p2, p0, Lcom/alipay/android/mini/widget/l;->b:Lcom/alipay/android/mini/window/UIFormDialog$DialogButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/mini/widget/l;->a:Lcom/alipay/android/mini/window/MiniPayActivity;

    iget-object v1, p0, Lcom/alipay/android/mini/widget/l;->b:Lcom/alipay/android/mini/window/UIFormDialog$DialogButton;

    iget-object v1, v1, Lcom/alipay/android/mini/window/UIFormDialog$DialogButton;->b:[Lcom/alipay/android/mini/event/ActionType;

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/window/MiniPayActivity;->a([Lcom/alipay/android/mini/event/ActionType;)V

    return-void
.end method

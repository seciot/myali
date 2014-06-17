.class Lcom/androidquery/util/WebImage$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/WebView$PictureListener;


# instance fields
.field final synthetic this$0:Lcom/androidquery/util/WebImage;


# direct methods
.method constructor <init>(Lcom/androidquery/util/WebImage;)V
    .locals 0

    iput-object p1, p0, Lcom/androidquery/util/WebImage$1;->this$0:Lcom/androidquery/util/WebImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewPicture(Landroid/webkit/WebView;Landroid/graphics/Picture;)V
    .locals 2

    iget-object v0, p0, Lcom/androidquery/util/WebImage$1;->this$0:Lcom/androidquery/util/WebImage;

    #getter for: Lcom/androidquery/util/WebImage;->b:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/androidquery/util/WebImage;->access$0(Lcom/androidquery/util/WebImage;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    iget-object v0, p0, Lcom/androidquery/util/WebImage$1;->this$0:Lcom/androidquery/util/WebImage;

    #calls: Lcom/androidquery/util/WebImage;->setup()V
    invoke-static {v0}, Lcom/androidquery/util/WebImage;->access$1(Lcom/androidquery/util/WebImage;)V

    return-void
.end method

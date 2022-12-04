part of 'create_quote_bloc.dart';

enum CreateQuoteStatus { initial, success, fail, loading }

enum HashTagPagingStatus {
  successPaging,
  failPaging,
  pagingLoading,
  initialPaging
}

enum ImageStatus { success, fail, loading, initial }

class CreateQuoteState extends Equatable {
  final CreateQuoteStatus? createQuoteStatus;
  final ImageStatus? imageStatus;
  final List<IdValue>? hashtags;
  final List<QuoteImage>? images;
  final List<IdValue>? userHashtags;
  final String? message;
  final HashTagPagingStatus? hashTagPagingStatus;
  final String? selectedImageId;

  @override
  List<Object?> get props => [
        createQuoteStatus,
        hashtags,
        message,
        hashTagPagingStatus,
        userHashtags,
        imageStatus,
        images,
        selectedImageId
      ];

  const CreateQuoteState(
      {this.createQuoteStatus,
      this.hashtags,
      this.message,
      this.hashTagPagingStatus,
      this.images,
      this.selectedImageId,
      this.imageStatus,
      this.userHashtags});

  CreateQuoteState copyWith({
    CreateQuoteStatus? createQuoteStatus,
    ImageStatus? imageStatus,
    List<IdValue>? hashtags,
    List<QuoteImage>? images,
    List<IdValue>? userHashtags,
    String? message,
    HashTagPagingStatus? hashTagPagingStatus,
    String? selectedImageId,
  }) {
    return CreateQuoteState(
      createQuoteStatus: createQuoteStatus ?? this.createQuoteStatus,
      imageStatus: imageStatus ?? this.imageStatus,
      hashtags: hashtags ?? this.hashtags,
      images: images ?? this.images,
      userHashtags: userHashtags ?? this.userHashtags,
      message: message ?? this.message,
      hashTagPagingStatus: hashTagPagingStatus ?? this.hashTagPagingStatus,
      selectedImageId: selectedImageId ?? this.selectedImageId,
    );
  }
}

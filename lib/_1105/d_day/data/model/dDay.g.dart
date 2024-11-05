// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dDay.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DDayAdapter extends TypeAdapter<DDay> {
  @override
  final int typeId = 0;

  @override
  DDay read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DDay(
      id: fields[0] as String,
      day: fields[1] as DateTime,
      title: fields[3] as String,
      contents: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, DDay obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.day)
      ..writeByte(3)
      ..write(obj.title)
      ..writeByte(4)
      ..write(obj.contents);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DDayAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

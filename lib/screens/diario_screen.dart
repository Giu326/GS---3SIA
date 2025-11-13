import 'package:flutter/material.dart';

class MoodJournalScreen extends StatefulWidget {
  const MoodJournalScreen({super.key});

  @override
  State<MoodJournalScreen> createState() => _MoodJournalScreenState();
}

class _MoodJournalScreenState extends State<MoodJournalScreen> {
  final TextEditingController _noteController = TextEditingController();
  final List<Map<String, dynamic>> _entries = [];

  String _selectedMood = '';

  void _addEntry() {
    if (_noteController.text.isEmpty || _selectedMood.isEmpty) return;

    final now = DateTime.now();
    final simpleDate =
        '${now.day.toString().padLeft(2, '0')}/${now.month.toString().padLeft(2, '0')}/${now.year}';

    setState(() {
      _entries.add({
        'date': simpleDate,
        'mood': _selectedMood,
        'note': _noteController.text,
      });
      _noteController.clear();
      _selectedMood = '';
    });
  }

  Widget _buildMoodIcon(String emoji) {
    final isSelected = _selectedMood == emoji;
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedMood = emoji;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.symmetric(horizontal: 6),
        decoration: BoxDecoration(
          color: isSelected ? const Color.fromARGB(255, 120, 89, 139) : const Color.fromARGB(255, 232, 225, 236),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isSelected ? const Color.fromARGB(255, 120, 89, 139) : Colors.grey.shade300,
            width: 2,
          ),
        ),
        child: Text(
          emoji,
          style: const TextStyle(fontSize: 28),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F6FF),
      appBar: AppBar(
        title: const Text(
          'Diário de Humor',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 120, 89, 139),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Como você está se sentindo hoje?',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 16),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildMoodIcon('😞'),
                _buildMoodIcon('😐'),
                _buildMoodIcon('🙂'),
                _buildMoodIcon('😊'),
                _buildMoodIcon('🤩'),
              ],
            ),

            const SizedBox(height: 20),
            TextField(
              controller: _noteController,
              decoration: InputDecoration(
                hintText: 'Escreva sobre o seu dia...',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              maxLines: 3,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _addEntry,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 120, 89, 139),
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text(
                'Salvar',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: _entries.length,
                itemBuilder: (context, index) {
                  final entry = _entries[index];
                  return Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      leading: Text(entry['mood'], style: const TextStyle(fontSize: 24)),
                      title: Text(entry['note']),
                      subtitle: Text(entry['date']),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
